class PagesController < ApplicationController
  def home

    followings_id = Follow.where(follower_id: current_user.id).map { |user| user.following_id }
    followings_visits = followings_id.map { |id| Visit.where(user_id: id) }
    followings_visits_ids = followings_visits.map { |visit| visit.ids }.flatten
    @followings_reviews = followings_visits_ids.map { |id| Review.where(visit_id: id) }
  end


  private

  # def truncate(text, length = 100, truncate_string = "...")
  #   return "No review written." if text.nil?
  #   l = length - truncate_string.chars.to_a.size
  #   (text.chars.to_a.size > length ? text.chars.to_a[0...l].join + truncate_string : text).to_s
  # end
end
