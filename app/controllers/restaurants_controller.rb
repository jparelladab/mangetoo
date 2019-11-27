class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.geocoded
    @markers = @restaurants.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { restaurant: restaurant })
      }
    end
    if params[:query].present?
      @restaurants = Restaurant.where("city ILIKE ?", "%#{params[:query]}%")
    else
      @restaurants = Restaurant.all
    end
  end

  def new
  end

  def create
  end

  def show
    followings_id = Follow.where(follower_id: current_user.id).map { |user| user.following_id }
    @visit_id_from_followings = []
    followings_id.each do |id|
      @visit_id_from_followings << Visit.where(user_id: id, restaurant: @restaurant).map { |visit| visit.id}
    end
    reviews = []
    @visit_id_from_followings.each do |id|
      if !Review.where(visit_id: id).first.nil?
        reviews << Review.where(visit_id: id).first
      end
    end
    @reviews_expanded = []
    reviews.each do |review|
      visit = Visit.find(review.visit_id)
      restaurant = Restaurant.find(visit.restaurant_id)
      user = User.find(visit.user_id)
      review_hash = {
        review_content_truncated: truncate(review.content),
        review_content: review.content,
        review_rating: review.rating,
        review_date: review.created_at.strftime("%d/%m/%y"),
        visit_date: visit.date.strftime("%d/%m/%y"),
        visit_num_of_people: visit.number_of_people,
        user_name: user.first_name + " " + user.last_name
      }
      @reviews_expanded << review_hash
    end

    if @reviews_expanded.length.positive?
      sum = 0
      @reviews_expanded.each do |review|
        sum += review[:review_rating]
      end
      @avg_rating = sum / @reviews_expanded.length
    else
      @avg_rating = 0
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def truncate(text, length = 100, truncate_string = "...")
    return "No review written." if text.nil?
    l = length - truncate_string.chars.to_a.size
    (text.chars.to_a.size > length ? text.chars.to_a[0...l].join + truncate_string : text).to_s
  end
end
