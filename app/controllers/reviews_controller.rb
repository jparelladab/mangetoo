class ReviewsController < ApplicationController
  def index
    @reviews_array = []
    reviews = current_user.reviews
    reviews.each do |review|
      visit = Visit.find(review.visit_id)
      restaurant = Restaurant.find(visit.restaurant_id)
      index_hash = {
        review_content_truncated: truncate(review.content),
        review_id: review.id,
        review_content: review.content,
        review_rating: review.rating,
        review_date: review.created_at.strftime("%d/%m/%y"),
        visit_date: visit.date.strftime("%d/%m/%y"),
        visit_num_of_people: visit.number_of_people,
        restaurant_instance: restaurant,
        restaurant_name: restaurant.name,
        restaurant_address: restaurant.address,
        restaurant_city: restaurant.city
      }
      @reviews_array << index_hash
    end
    @restaurants = []
    @reviews_array.map do |review_hash|
      @restaurants << review_hash[:restaurant_instance]
    end
    @reviews_array.sort_by { |r| r[:review_date] }.reverse

    @markers = @restaurants.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude,
        infoWindow: render_to_string(partial: "restaurants/info_window", locals: { restaurant: restaurant }),
      }
    end
  end

  def new
    @visit = Visit.find(params[:visit_id])
    @restaurant = Restaurant.find(@visit.restaurant_id)
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @visit = Visit.find(params[:visit_id])
    @review.visit = @visit
    if @review.save
      flash[:notice] = "Thank you for your review!"
      redirect_to reviews_path
    else
      raise
      flash[:notice] = "Sorry, an error has occurred. Please try again later or contact the MangeToo team."
      redirect_to visits_path
    end
  end

  private

  def review_params
    params.require(:review).permit(:visit_id, :content, :rating)
  end

  def truncate(text, length = 100, truncate_string = "...")
    return "No review written." if text.nil?
    l = length - truncate_string.chars.to_a.size
    (text.chars.to_a.size > length ? text.chars.to_a[0...l].join + truncate_string : text).to_s
  end
end
