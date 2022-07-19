class Lender::BookingsController < ApplicationController
  def index
    user = current_user
    # @bookings = Booking.where(lender_id: user.id)
    @bookings = policy_scope(Booking.where(lender_id: user.id)).order(created_at: :desc)
  end
end
