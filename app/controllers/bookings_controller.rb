class BookingsController < ApplicationController
  def index
    @user = current_user
    @bookings = @user.bookings
  end

  def new
    @activity = Activity.find(params[:activity_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new()
    @activity = Activity.find(params[:activity_id])
    @booking.activity = @activity
    @booking.user = current_user
    if @booking.save
      redirect_to edit_booking_path(@booking)
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to bookings_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

  private
  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
