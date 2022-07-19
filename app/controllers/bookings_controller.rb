class BookingsController < ApplicationController
  def index
    @user = current_user
    @bookings = policy_scope(Booking.where(renter: @user)).order(created_at: :desc)
  end

  def update
    # change the booking details
    # find the booking
    booking = Booking.find(params[:id])
    # Changes the booking params
    # I wonder if it might be better to use an if loop or variable and just change booking.status directly and save -mike
    if booking.update(booking_params)
      redirect_to lender_bookings_path
    else
      # not sure if we should put something different here?
      redirect_to lender_bookings_path
    end
    authorize booking
  end

  def create
    # we don't need an instance variable here because it's not used in view
    house = House.find(params[:house_id])
    user = current_user
    booking = Booking.new(booking_params)
    booking.house = house
    booking.renter = user
    booking.lender = house.user
    booking.status = "pending"
    if booking.save
      # should we redirect elsewhere?
      # popup and redirect to houses index?
      # send an alert?
      redirect_to house_path(house)
    else
      # send an alert?
      redirect_to house_path(house)
    end
    authorize booking
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :status)
  end
end
