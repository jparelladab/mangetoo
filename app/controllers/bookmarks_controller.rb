class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.where(user: current_user).sort_by { |b| b[:created_at] }.reverse
    @bookmarked_restaurants = @bookmarks.map { |b| b.restaurant }
    followings_id = Follow.where(follower_id: current_user.id).map { |user| user.following_id }
    @followings_visits = followings_id.map { |id| Visit.where(user_id: id) }.flatten

    my_visits = Visit.where(user_id: current_user.id)
    @all_visits = []
    @followings_visits.each { |fv| @all_visits << fv }
    my_visits.each { |mv| @all_visits << mv }

    @markers = @bookmarked_restaurants.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude,
        infoWindow: render_to_string(partial: "restaurants/info_window", locals: { restaurant: restaurant })
      }
    end
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @current_user = current_user
    @bookmark = Bookmark.new(restaurant: @restaurant, user: @current_user)
    if @bookmark.save
      # flash[:notice] = "Bookmark successfully created"
      respond_to do |format|
        format.html { redirect_to restaurant_path(@restaurant) }
        format.js
      end
    else
      flash[:notice] = "Sorry, an error has occurred. Please try again later or contact the MangeToo team."
      respond_to do |format|
        format.html { render 'restaurants/show' }
        format.js
      end
    end
  end

  def destroy
    restaurant = Restaurant.find(params[:id])
    bookmark = current_user.bookmarks.find_by(restaurant_id: restaurant.id)
    if bookmark.destroy
      flash[:notice] = "Bookmark successfully removed."
      redirect_to bookmarks_path
    else
      flash[:notice] = "Sorry, an error has occurred. Please try again later or contact the MangeToo team."
      render :index
    end
  end
end
