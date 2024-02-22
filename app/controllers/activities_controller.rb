class ActivitiesController < ApplicationController
  def index
    @activities = Activity.near(params[:query], 10)
  end

  def category
    @activities = Activity.where(params[:activity_category])
  end

  def show
    @activity = Activity.find(params[:id])
    if @activity.geocoded?
      @markers = [{
        lat: @activity.latitude,
        lng: @activity.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {activity: @activity}),
        marker_html: render_to_string(partial: "marker")
    }]
    end
  end

  def potential_participants
    @activities = Activity.last
    @potential_participants = @user.near(@activities.city).where("preferred_activity_in?", [@activity.category])
  end
end
