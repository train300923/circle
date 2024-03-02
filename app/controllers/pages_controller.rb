class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @random_activity = Activity.all.sample(1).sole
  end

  def landing_page
  end
end
