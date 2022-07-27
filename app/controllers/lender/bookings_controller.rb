class Lender::BookingsController < ApplicationController
  def index
    user = current_user
    bookings = policy_scope(Booking.where(lender_id: user.id)).order(created_at: :desc)
    @pending_bookings = []
    @approved_bookings = []
    @past_bookings = []
    bookings.each do |booking|
     if booking.status == 'pending'
      @pending_bookings << booking
     elsif booking.status == 'approved' && booking.start_time > Date.today
      @approved_bookings << booking
     else
      @past_bookings << booking
     end
    end
  end
end
