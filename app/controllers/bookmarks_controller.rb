class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.where(user: current_user)
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @current_user = current_user
    @bookmark = Bookmark.new(restaurant: @restaurant, user: @current_user)
    # TEMPORARY REDIRECTION:
    redirect_to restaurant_path(@restaurant) if @bookmark.save
    # NEED TO ADD REDIRECT FUNCTIONALITY IF THE BOOKMARK SAVES!!
  end
end
