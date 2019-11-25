class FollowsController < ApplicationController
  def index
    @follows = Follow.all
  end

  def create
  end

  def destroy
  end
end
