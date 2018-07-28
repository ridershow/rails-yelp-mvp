class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurants = Restaurant.find(params[:id])
  end

  def new
    @restaurants = Restaurant.new
  end

  def create
    @restaurants = Restaurant.new(user_params)
    @restaurants.save
    redirect_to restaurants_path
  end

  private
    def user_params
      params.require(:restaurant).permit(:name, :address, :phone_number, :category)
    end
end
