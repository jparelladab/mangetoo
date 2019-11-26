class RestaurantsController < ApplicationController

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
    @restaurant = Restaurant.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
