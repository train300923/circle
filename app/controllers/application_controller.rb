class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def show_navbar?
    true
  end

  helper_method :show_navbar?
end
