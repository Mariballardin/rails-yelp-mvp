class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
      if @restaurant.save
        redirect_to @restaurant, notice: "Restaurant was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_url, notice: "Restaurante was successfully deleted."
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :addess, :phone_number, :category)
  end
end
