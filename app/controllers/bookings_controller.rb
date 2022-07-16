class BookingsController < ApplicationController
  def update
    # change the booking details
    # find the booking
    booking = Booking.find(params[:id])
    # Changes the booking params
    booking.update(booking_params)
  end
end
