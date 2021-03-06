class DishesController < ApplicationController
  def index
    render json: Dish.all
  end

  # def show
  #   render json: Dish.find(params[:id])
  # end

  def create
    render json: Dish.create(dish_params)
  end

  def updated
    Dish.find(params[:id]).update(dish_params)
    render json: Dish.find(params[:id])
  end

  def destroy
    render json: Dish.find(params[:id]).destroy
  end

  private

  def dish_params
    params.require(:dish).permit(:name, :price, :pic, :truck_id)
  end
end
