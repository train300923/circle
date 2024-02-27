class ParticipantsController < ApplicationController
  def index
    @booking = Booking.find(params[:booking_id])
    @potential_participants = User.all
                                  .near(@booking.activity.address)
                                  .where(preferred_category: @booking.activity.category)
  end

  def show
  end
end
