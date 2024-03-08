class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @random_activity = Activity.find_by(name: "Clubbing")
    @users_memory = User.all.sample(8)
  end

  def landing_page
  end
end
