class FollowsController < ApplicationController
  def index
    # Current User fellow foodies
    current_user_followings_id = Follow.where(follower_id: current_user.id).map { |user| user.following_id }
    @fellow_foodies = current_user_followings_id.map { |followings_id| User.where(id: followings_id) }.flatten
    #  All MangeToo foodies
    @all_foodies = User.all
    @all_foodies_without_fellow_foodies = @all_foodies.reject { |af| @fellow_foodies.include?(af) }
  end

  def create
    # @new_fellow_foodie = Follow.new(follow_params)
  end

  def destroy

  end

  private

  def follow_params
    # params.require(:follow).permit()
  end
end
