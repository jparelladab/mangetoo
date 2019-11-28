class PagesController < ApplicationController
  def home
    followings_id = Follow.where(follower_id: current_user.id).map { |user| user.following_id }
    followings_visits = followings_id.map { |id| Visit.where(user_id: id) }
    followings_visits_ids = followings_visits.map { |visit| visit.ids }.flatten
    @followings_reviews = followings_visits_ids.map { |id| Review.where(visit_id: id) }
    my_visits = Visit.where(user_id: current_user.id)
    my_visits_ids = my_visits.map { |visit| visit.id }.flatten
    my_reviews_arrelation = my_visits_ids.map { |id| Review.where(visit_id: id) }
    @my_reviews = my_reviews_arrelation.map { |r| r.first}.compact
  end
end
