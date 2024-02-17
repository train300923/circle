class ActivitiesController < ApplicationController
  def index
    @activities = Activity.near(params[:query], 10)
  end

  def category
    @activities = Activity.where(params[:activity_category])
  end

  def show
    @activity = Activity.find(params[:id])
  end
end
