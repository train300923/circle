class BookingsController < ApplicationController
  def index
    @user = current_user
    @bookings = @user.bookings
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
