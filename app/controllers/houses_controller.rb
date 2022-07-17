class HousesController < ApplicationController
  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
    @booking = Booking.new
  end

  def new
    @user = User.find(current_user.id)
    @house = House.new
  end

  def create
    @user = User.find(current_user.id)
    @house = House.new(house_params)
    @house.user = @user
    @house.save

    redirect_to house_path(@house)
  end

  private

  def house_params
    params.require(:house).permit(:name, :address, :haunted)
  end
end
