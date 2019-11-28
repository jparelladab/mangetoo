class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.geocoded
    if params[:query].present?
      @restaurants = Restaurant.where("city ILIKE ?", "%#{params[:query]}%")
    else
      @restaurants = Restaurant.all
    end
      @markers = @restaurants.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { restaurant: restaurant })
      }
    end
    if @restaurants.empty?
      @restaurants = Restaurant.all
      @markers = @restaurants.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { restaurant: restaurant })
      }
      end
    end
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      flash[:notice] = "Bookmark successfully created"
      redirect_to restaurant_path(@restaurant)
    else
      flash[:notice] = "Sorry, an error has occurred. Please try again later or contact the MangeToo team."
      render :new
    end
  end

  def show
    # followings = Follow.where(follower_id: current_user.id)
    # followings_visits = followings.map { |f| User.find(f.following_id).visits }
    # @followings_reviews = followings_visits.flatten!.map { |v| v.reviews }
    followings_id = Follow.where(follower_id: current_user.id).map { |user| user.following_id }
    visit_from_followings = followings_id.map { |id| Visit.where(user_id: id, restaurant: @restaurant) }
    visit_ids_from_followings = visit_from_followings.map { |visit| visit.ids }.flatten
    @reviews_from_followings = visit_ids_from_followings.map { |id| Review.where(visit_id: id) }
    @markers =
      [{
        lat: @restaurant.latitude,
        lng: @restaurant.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { restaurant: @restaurant })
      }]
  end

  #   end

  #   reviews = []
  #   @visit_id_from_followings.each do |id|
  #     if !Review.where(visit_id: id).first.nil?
  #       reviews << Review.where(visit_id: id).first
  #     end
  #   end

  #   @reviews_expanded = []
  #   reviews.each do |review|
  #     visit = Visit.find(review.visit_id)
  #     restaurant = Restaurant.find(visit.restaurant_id)
  #     user = User.find(visit.user_id)
  #     review_hash = {
  #       review_content_truncated: truncate(review.content),
  #       review_content: review.content,
  #       review_rating: review.rating,
  #       review_date: review.created_at.strftime("%d/%m/%y"),
  #       visit_date: visit.date.strftime("%d/%m/%y"),
  #       visit_num_of_people: visit.number_of_people,
  #       user_name: user.first_name + " " + user.last_name
  #     }
  #     @reviews_expanded << review_hash
  #   end

  #   if @reviews_expanded.length.positive?
  #     sum = 0
  #     @reviews_expanded.each do |review|
  #       sum += review[:review_rating]
  #     end
  #     @avg_rating = sum / @reviews_expanded.length
  #   else
  #     @avg_rating = 0
  #   end
  # end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :city, :category, :website, :phone_number)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  # def truncate(text, length = 100, truncate_string = "...")
  #   return "No review written." if text.nil?
  #   l = length - truncate_string.chars.to_a.size
  #   (text.chars.to_a.size > length ? text.chars.to_a[0...l].join + truncate_string : text).to_s
  # end
end
