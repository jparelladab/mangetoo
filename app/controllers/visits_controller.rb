class VisitsController < ApplicationController
  def index
    @visits = Visit.where(user: current_user)
  end

  def create
  end

  def update
  end

  def destroy
  end
end
