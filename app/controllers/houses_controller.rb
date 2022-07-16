class HousesController < ApplicationController
  def index
  end

  def show
    @house = House.find(params[:id])
  end

  def new
  end

  def create
  end
end
