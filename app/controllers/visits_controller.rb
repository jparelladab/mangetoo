class VisitsController < ApplicationController
  def index
    @visits = Visit.all
  end

  def create
  end

  def update
  end

  def destroy
  end
end
