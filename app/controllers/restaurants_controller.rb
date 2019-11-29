class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    followings_id = Follow.where(follower_id: current_user.id).map { |user| user.following_id }
    followings_visits = followings_id.map { |id| Visit.where(user_id: id) }.flatten
    followings_restaurants = followings_visits.map {|v| v.restaurant.id}
    my_visits = Visit.where(user_id: current_user.id)
    my_restaurants = my_visits.map {|v| v.restaurant.id}
    all_restaurants_id = my_restaurants | followings_restaurants
    restaurants = all_restaurants_id.map { |id| Restaurant.where(id: id) }.flatten

    if params[:query].present?
      @restaurants = restaurants.select { |rest| rest[:city].downcase == params[:query].downcase }
    else
      @restaurants = restaurants
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
      flash[:notice] = "Restaurant successfully created"
      redirect_to restaurant_path(@restaurant)
    else
      flash[:notice] = "Sorry, an error has occurred. Please try again later or contact the MangeToo team."
      render :new
    end
  end

  def show

    followings_id = Follow.where(follower_id: current_user.id).map { |user| user.following_id }
    visit_from_followings = followings_id.map { |id| Visit.where(user_id: id, restaurant: @restaurant) }
    visit_ids_from_followings = visit_from_followings.map { |visit| visit.ids }.flatten
    @reviews_from_followings = visit_ids_from_followings.map { |id| Review.where(visit_id: id) }.flatten
    my_visits = current_user.visits.where(restaurant_id: params[:id])
    @my_reviews = my_visits.map {|v| v.reviews}.flatten
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
    if @restaurant.update(restaurant_params)
      flash[:notice] = "Restaurant successfully updated"
      redirect_to restaurant_path(@restaurant)
    else
      flash[:notice] = "Sorry, an error has occurred. Please try again later or contact the MangeToo team."
      render :edit
    end
  end

  def destroy
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :city, :category, :website, :phone_number, photos: [])
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
