class VisitsController < ApplicationController
  def index
    visits = Visit.where(user: current_user)

    @upcoming_visits = visits.select { |v| v.date > Date.today }.sort_by { |v| v[:created_at] }.reverse
    @previous_visits = visits.select { |v| v.date <= Date.today }.sort_by { |v| v[:date] }

    followings_id = Follow.where(follower_id: current_user.id).map { |user| user.following_id }
    @followings_visits = followings_id.map { |id| Visit.where(user_id: id) }.flatten

    @restaurants = visits.map { |v| v.restaurant }
    # @review_hash_array = []
    # @previous_visits.each do |previous_visit|
    #   review = Review.find_by(visit_id: previous_visit.id)
    #   if previous_visit.reviews.any?
    #     review_hash = {
    #       review_content: review.content,
    #       review_rating: review.rating,
    #       review_id: review.id,
    #       review_date: review.created_at.strftime("%d/%m/%y"),
    #       visit: previous_visit,
    #       review_included: true
    #     }
    #   else
    #     review_hash = {
    #       review: "none",
    #       visit: previous_visit,
    #       review_included: false
    #     }
    #   end
    #   @review_hash_array << review_hash
    # end
    # @previous_visits = @previous_visits.sort_by { |v| v[:date] }.reverse

    # @restaurants = []
    # @visits.map do |visit|
    #   restaurant = Restaurant.find(visit.restaurant_id)
    #   @restaurants << restaurant
    # end

    @markers = @restaurants.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude,
        infoWindow: render_to_string(partial: "restaurants/info_window", locals: { restaurant: restaurant }),
      }
    end
  end

  def create
    @visit = Visit.new(visit_params)
    @visit.date = Date.parse params[:visit][:date]
    @visit.user_id = current_user.id
    @visit.restaurant = Restaurant.find(params[:restaurant_id])
    if @visit.save
      flash[:notice] = "Booking successfully created"
    else
      raise
      flash[:notice] = "Sorry, an error has occurred. Please try again later or contact the MangeToo team."
      redirect_to restaurant_path(restaurant)
    end
  end

  def edit
  end

  def update
    if @visit.update(visit_params)
      flash[:notice] = "Visit successfully updated"
      redirect_to restaurant_path(@restaurant)
    else
      flash[:notice] = "Sorry, an error has occurred. Please try again later or contact the MangeToo team."
      render :edit
    end
  end

  def destroy
  end

  private

  def visit_params
    params.require(:visit).permit(:number_of_people, :restaurant_id)
  end
end
