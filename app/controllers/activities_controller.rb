class ActivitiesController < ApplicationController

  def index
    if params[:query]
      @activities = Activity.near(params[:query], 10)
    elsif params[:search]
      search_params = params[:search]
      @date = search_params[:date]
      @time = search_params[:time]
      @max_price = search_params[:maximum_price].to_f
      @city = search_params[:city]
      @category = search_params[:category]
      @activities = Activity.near(@city, 10).where(category: @category).where("price <= ?", @max_price)
    end
  end

  def category_list
    @activities = Activity.near(params[:query], 10)
    @city = params[:query]
    @categories = @activities.map(&:category)
    @categories_dry = @categories.uniq
  end

  def info_activity
  end

  def show
    @activity = Activity.find(params[:id])
    @date = params[:date]
    @time = params[:time]
    @max_price = params[:maximum_price].to_f
    @city = params[:city]
    @category = params[:category]

    if @activity.geocoded?
      @markers = [{
        lat: @activity.latitude,
        lng: @activity.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {activity: @activity}),
        marker_html: render_to_string(partial: "marker")
      }]
    end
  end

  private

  def set_query_param
    @query_param = params[:query]
  end

end


# liste serpent pets
# = lost kitty
# 12-13 janvier livecode

# collection acitivies::categories

# activities controller
# @activity = Activity.last
# @potential participants = @user.near(@activity.city).where("preferred_activities in?", [@acitivity.category])

# view custom
# activities

# potential_participant view custom, controller user (ou activities controller), routes custom
# neste ds activities car activiti id
# user.near ac activity.city dont pref activity.ctegorey
# @acitivity.find(params id)
# @POTENTIAL PARTICIP = user.near.preferr category

# date pr activity
