class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.where(user: current_user)
    @bookmarked_restaurants = []
    @bookmarks.each do |bookmark|
      restaurant = Restaurant.find(bookmark.restaurant_id)
      @bookmarked_restaurants << restaurant
    end

    @markers = @bookmarked_restaurants.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude,
        infoWindow: render_to_string(partial: "restaurants/info_window", locals: { restaurant: restaurant }),
        image_url: helpers.asset_url('MangeToo_DefaultUserImage.png')
      }
    end
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @current_user = current_user
    @bookmark = Bookmark.new(restaurant: @restaurant, user: @current_user)
    @bookmark.save
    if @bookmark.save
      flash[:notice] = "Bookmark successfully created"
      redirect_to restaurant_path(@restaurant)
    else
      flash[:notice] = "Sorry, an error has occurred. Please try again later or contact the MangeToo team."
      render :new
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:restaurant_id])
    if @bookmark.destroy
      flash[:notice] = "Bookmark successfully removed"
    else
      flash[:notice] = "Sorry, an error has occurred. Please try again later or contact the MangeToo team."
      render bookmarks_path
    end
  end
end
