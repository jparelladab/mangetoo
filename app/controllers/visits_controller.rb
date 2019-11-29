class VisitsController < ApplicationController
  def index
    @visits = Visit.where(user: current_user)
    @upcoming_visits = []
    @previous_visits = []

    @visits.each do |visit|
      if visit.date < Date.today
        @previous_visits << visit
      else
        @upcoming_visits << visit
      end
    end
    @upcoming_visits = @upcoming_visits.sort_by { |v| v[:date] }
    # raise

    @review_hash_array = []
    @previous_visits.each do |previous_visit|
      review = Review.find_by(visit_id: previous_visit.id)
      if previous_visit.reviews.any?
        review_hash = {
          review_content: review.content,
          review_rating: review.rating,
          review_id: review.id,
          review_date: review.created_at.strftime("%d/%m/%y"),
          visit: previous_visit,
          review_included: true
        }
      else
        review_hash = {
          review: "none",
          visit: previous_visit,
          review_included: false
        }
      end
      @review_hash_array << review_hash
    end
    @previous_visits = @previous_visits.sort_by { |v| v[:date] }.reverse

    @restaurants = []
    @visits.map do |visit|
      restaurant = Restaurant.find(visit.restaurant_id)
      @restaurants << restaurant
    end

    @markers = @restaurants.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude,
        infoWindow: render_to_string(partial: "restaurants/info_window", locals: { restaurant: restaurant }),
      }
    end
  end

  def create
  end

  def update
  end

  def destroy
  end
end
