class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    followings_id = Follow.where(follower_id: current_user.id).map { |user| user.following_id }
    @followings_visits = followings_id.map { |id| Visit.where(user_id: id) }.flatten
    followings_restaurants = @followings_visits.map { |v| v.restaurant.id }
    my_visits = Visit.where(user_id: current_user.id)
    @all_visits = []
    @followings_visits.each { |fv| @all_visits << fv }
    my_visits.each { |mv| @all_visits << mv }
    my_restaurants = my_visits.map { |v| v.restaurant.id }
    all_restaurants_id = my_restaurants | followings_restaurants
    restaurants = all_restaurants_id.map { |id| Restaurant.where(id: id) }.flatten

    if params[:query].present?
      @restaurants = restaurants.select { |rest| rest[:city].downcase == params[:query].downcase }
      @city = params[:query].split(" ").map { |w| w.capitalize }.join(" ")
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
    reviews_from_followings = visit_ids_from_followings.map { |id| Review.where(visit_id: id) }.flatten
    my_visits = current_user.visits.where(restaurant_id: params[:id])
    my_reviews = my_visits.map { |v| v.reviews }.flatten.sort_by { |r| r[:created_at]}
    @reviews = (reviews_from_followings + my_reviews).sort_by { |r| r.visit.date }.reverse
    @markers =
      [{
        lat: @restaurant.latitude,
        lng: @restaurant.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { restaurant: @restaurant })
      }]
    @visit = Visit.new
    user_bookmarks = Bookmark.where(user: current_user)
    @user_bookmarked_restaurants = user_bookmarks.map { |b| b.restaurant }

    # calculating average rating
    if @reviews == []
      @avg_rating = 0
    else
      review_ratings_total = @reviews.map { |r| r.rating }.sum
      review_count = @reviews.count
      @avg_rating = (review_ratings_total / review_count).round
    end
  end

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
