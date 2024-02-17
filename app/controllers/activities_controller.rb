class ActivitiesController < ApplicationController
  def index
    @activities = Activity.where((latitude-params).abs < 5, (longitude-params).abs < 5)
  end

def category
  @category = Activity.category.find(params[])
end

  def show
    @activity = Activity.find(params[:id])
  end
end
