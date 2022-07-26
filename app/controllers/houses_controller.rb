class HousesController < ApplicationController
  # you can do these actions without sigining in
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    # this returns certain houses depending on the query in the searchbar
    if params[:query].present?
      @houses = House.search_by_name_and_address(params[:query])
    else
      @houses = House.all
      # this covers all houses in the policy_scope
      @houses = policy_scope(House).order(created_at: :desc)
    end
  end

  def show
    @house = House.find(params[:id])
    @booking = Booking.new
    authorize @house
    # the `geocoded` scope filters only houses with coordinates (latitude & longitude)
    # these are called in the mapbox controller
  @markers = [{
    lat: @house.latitude,
    lng: @house.longitude,
    info_window: render_to_string(partial: "info_window",
      locals: { house: @house }),
      image_url: helpers.asset_url("apple-touch-icon.png")
            }]
  end

  def new
    # @user = User.find(current_user.id)
    @user = current_user
    @house = House.new
    # authorize is linked to house_policy.rb
    authorize @house
  end

  def create
    # This needs to linked to a devise controller to be able to return to the previous page
    # session[:return_to] = request.referer
    # super
    # @user = User.find(current_user.id)
    @user = current_user
    @house = House.new(house_params)
    @house.user = @user
    authorize @house
    if @house.save
      # should we redirect to index, the house, or somewhere else?
      redirect_to house_path(@house)
    else
      redirect_to new_house_path
    end
  end

  def edit
    @house = House.find(params[:id])
    authorize @house
  end

  def update
    house = House.find(params[:id])
    house.update(house_params)
    redirect_to house_path(house)
    authorize house
  end

  def destroy
    # fetch the hosue from the db
    @house = House.find(params[:id])
    # destroy the house
    @house.destroy!
    redirect_to houses_path
    authorize @house
  end

  private

  def house_params
    params.require(:house).permit(:name, :address, :haunted, :photo)
  end
end
