class BookingsController < ApplicationController
  def index
    @user = current_user
    @bookings = Booking.where(user: @user.id)
  end
  
  def update
    # change the booking details
    # find the booking
    booking = Booking.find(params[:id])
    # Changes the booking params
    booking.update(booking_params)
  end
end
