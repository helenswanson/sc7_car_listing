class CarsController < ApplicationController
  def index
    @cars = Cars.all
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)

    if @car.save
      flash[:notice] = "Success"
      redirect_to cars_path
    else
      flash.now[:notice] = "Error"
      render :new
    end
  end

  private
  def car_params
    params.require(:car).permit(:type, :manufacturer, :color, :year, :mileage, :description)
  end
end
