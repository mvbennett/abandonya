class Lender::BookingsController < ApplicationController
  def index
    user = current_user
    @bookings = Booking.where(lender_id: user.id)
  end
end
