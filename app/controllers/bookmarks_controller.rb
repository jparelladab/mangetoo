class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.where(user: current_user)
    @bookmarked_restaurants = @bookmarks.map { |b| b.restaurant }
    followings_id = Follow.where(follower_id: current_user.id).map { |user| user.following_id }
    @followings_visits = followings_id.map { |id| Visit.where(user_id: id) }.flatten
    # followings_reviews = followings_visits.where

    @markers = @bookmarked_restaurants.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude,
        infoWindow: render_to_string(partial: "restaurants/info_window", locals: { restaurant: restaurant }),
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
