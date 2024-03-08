class MemoriesController < ApplicationController
  def show
    @memory = Memory.find(params[:id])
    @booking = Booking.find(params[:booking_id])
  end
end
