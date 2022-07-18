class BookingsController < ApplicationController
  def index
    @user = current_user
    @bookings = Booking.where(renter: @user)
  end

  def update
    # change the booking details
    # find the booking
    booking = Booking.find(params[:id])
    # Changes the booking params
    # I wonder if it might be better to use an if loop or variable and just change booking.status directly and save -mike
    booking.update(booking_params)
    # booking.status = "approved"
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
    booking.save

    # should we redirect elsewhere?
    # popup and redirect to houses index?
    redirect_to house_path(house)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time)
  end
end
