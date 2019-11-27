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
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def show
    followings_id = Follow.where(follower_id: current_user.id).map { |user| user.following_id }
    @visit_id_from_followings = []
    followings_id.each do |id|
      @visit_id_from_followings << Visit.where(user_id: id, restaurant: @restaurant).map { |visit| visit.id}
    end
    @reviews = []
    @visit_id_from_followings.each do |id|
      if !Review.where(visit_id: id).first.nil?
        @reviews << Review.where(visit_id: id).first
      end
    end
  end

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
end
