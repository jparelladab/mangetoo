class RestaurantsController < ApplicationController

  def index
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
