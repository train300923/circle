class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def new
    @activity = Activity.new()
  end

  def create
    @activity = Activity.new(params[:id])
    @activity.save
  end

  def edit
    
  end

  def update

  end

  def destroy
    @activity.destroy
    redirect_to activities_path, status: :see_other
  end
end
