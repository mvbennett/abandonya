class HousesController < ApplicationController
  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
    @booking = Booking.new
  end

  def new
    # @user = User.find(current_user.id)
    @user = current_user
    @house = House.new
  end

  def create
    # @user = User.find(current_user.id)
    @user = current_user
    @house = House.new(house_params)
    @house.user = @user
    @house.save

    # should we redirect to index, the house, or somewhere else?
    redirect_to house_path(@house)
  end

  private

  def house_params
    params.require(:house).permit(:name, :address, :haunted)
  end
end
