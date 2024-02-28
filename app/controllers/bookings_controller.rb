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
    redirect_to booking_participants_path(@booking)
  end

  def add_participants
    @booking = Booking.find(params[:id])
    participant_ids = Array(params[:participations][:participants])
    participant_ids.each do |user_id|
      unless @booking.participations.exists?(user_id: user_id)
        # Créez une nouvelle participation qui relie l'utilisateur au booking
        @booking.participations.create(user_id: user_id)
      end
    end
    redirect_to participants_selected_booking_path(@booking)
  end

  def participants_selected
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
