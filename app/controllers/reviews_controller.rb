class ReviewsController < ApplicationController
  def index
    @reviews_array = []
    reviews = current_user.reviews
    reviews.each do |review|
      visit = Visit.find(review.visit_id)
      restaurant = Restaurant.find(visit.restaurant_id)
      index_hash = {
        review_content: truncate(review.content),
        review_rating: review.rating,
        review_date: review.created_at.strftime("%d/%m/%y"),
        visit_date: visit.date.strftime("%d/%m/%y"),
        visit_num_of_people: visit.number_of_people,
        restaurant_instance: restaurant,
        restaurant_name: restaurant.name,
        restaurant_address: restaurant.address,
        restaurant_city: restaurant.city
      }
      @reviews_array << index_hash
    end
  end

  def new
  end

  def create
  end

  private

  def truncate(text, length = 100, truncate_string = "...")
    return "No review written." if text.nil?
    l = length - truncate_string.chars.to_a.size
    (text.chars.to_a.size > length ? text.chars.to_a[0...l].join + truncate_string : text).to_s
  end
end
