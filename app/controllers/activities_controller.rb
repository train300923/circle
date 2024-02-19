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
      marker_html: render_to_string(partial: "marker", locals: {activity: @activity})
    }]
    end
  end
end
