class PagesController < ApplicationController
  def home
    followings_id = Follow.where(follower_id: current_user.id).map { |follow| follow.following_id }
    followings_visits = followings_id.map { |id| Visit.where(user_id: id) }.flatten
    @followings_reviews = followings_visits.map { |visit| Review.where(visit_id: visit.id) }.flatten
    @my_reviews = current_user.visits.map {|v| Review.where(visit_id: v.id)}.flatten
  end
end
