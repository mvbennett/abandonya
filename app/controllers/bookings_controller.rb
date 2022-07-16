class BookingsController < ApplicationController
  def index
    @user = current_user
    @bookings = Booking.where(user: @user.id)
  end
end
