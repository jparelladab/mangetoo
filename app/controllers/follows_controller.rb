class FollowsController < ApplicationController
  def index
    # Current User fellow foodies
    current_user_followings_id = Follow.where(follower_id: current_user.id).map { |user| user.following_id }
    @fellow_foodies = current_user_followings_id.map { |followings_id| User.where(id: followings_id) }.flatten.reject { |f| f == current_user }
    #  All MangeToo foodies
    @all_foodies = User.all
    @all_foodies_without_fellow_foodies = @all_foodies.reject { |af| @fellow_foodies.include?(af) || af == current_user }
  end

  def create
    # raise
    @new_follow = Follow.new(follower_id: current_user.id, following_id: params[:user_id])
    if @new_follow.save
      flash[:notice] = "New fellow foodie created!"
      redirect_to follows_path
    else
      flash[:notice] = "Sorry, an error has occurred. Please try again later or contact the MangeToo team."
      render :index
    end
  end

  def destroy

  end
end
