class CarsController < ApplicationController
def index
  #this will display the cars
  @cars = car.all
end
def show
  #display the details of the cars
  @car = Car.find(params[:id])
end

def new
  # Display a form to create a new car
  @car = Car.new
end

def create
  # Save a new car to the database
  @car = Car.new(car_params)
  if @car.save
    redirect_to @car, notice: 'Car was successfully created.'
  else
    render :new
  end
end
def edit
  # Display a form to edit an existing car
  @car = Car.find(params[:id])
end

def update
  # Update an existing car in the database
  @car = Car.find(params[:id])
  if @car.update(car_params)
    redirect_to @car, notice: 'Car was successfully updated.'
  else
    render :edit
  end
end

def delete
  # Delete a car from the database
  @car = Car.find(params[:id])
  @car.delete
  redirect_to cars_url, notice: 'Car was successfully destroyed.'
end

private

def car_params
  # Define the permitted parameters for creating and updating a car
  params.require(:car).permit(:make, :model, :year, :color, :information)
end
end
