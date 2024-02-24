class ActivitiesController < ApplicationController
  before_action :set_query_param, only: [:index, :category, :info_activity]

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
    # @activities_category = @activities.where(category: params[:category])
  end

  def info_activity
    # @date = params[:date]
    # @time = params[:time]
    # @max_price = params[:maximum_price]
    # redirect_to category_activities_path(date: @date, time: @time, maximum_price: @max_price, query_param: @query_param, category: params[:category])
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

  def potential_participants
    @activity = Activity.last
    @users = User.all
    @potential_participants = @users.near(@activity.address).where(preferred_category: @activity.category)
  end

  def potential_part_selected
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
