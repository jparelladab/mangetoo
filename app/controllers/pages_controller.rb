class PagesController < ApplicationController
  def home
    @reviews_array = []
    reviews = current_user.reviews
    reviews.each do |review|
      visit = Visit.find(review.visit_id)
      restaurant = Restaurant.find(visit.restaurant_id)
      user = User.find(visit.user_id)
      index_hash = {
        user_first_name: user.first_name,
        user_last_name: user.last_name,
        review_content_truncated: truncate(review.content),
        review_content: review.content,
        review_rating: review.rating,
        review_date: review.created_at.strftime("%d/%m/%y"),
        restaurant_instance: restaurant,
        restaurant_name: restaurant.name,
        restaurant_city: restaurant.city
      }
      @reviews_array << index_hash
    end
    @restaurants = []
    @reviews_array.map do |review_hash|
      @restaurants << review_hash[:restaurant_instance]
    end
  end

  private

  def truncate(text, length = 100, truncate_string = "...")
    return "No review written." if text.nil?

    l = length - truncate_string.chars.to_a.size
    (text.chars.to_a.size > length ? text.chars.to_a[0...l].join + truncate_string : text).to_s
  end
end
