class ReviewsController < ApplicationController
  def index
    # NEED TO COMPLETE @REVIEWS JUST FOR THE CURRENT USER
    @reviews = current_user.visits.reviews
  end

  def new
  end

  def create
  end
end
