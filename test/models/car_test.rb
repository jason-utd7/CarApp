require "test_helper"

class CarTest < ActiveSupport::TestCase
 test "should save a valid car " do
  car = Car.new(make: "Toyota", model: "Camry-Hybrid", year:2022, information:"There are four trim levels for the 2024 Toyota Camry Hybrid: LE, SE, XLE, and XSE. A front-wheel drive system, an electronic continuously variable automatic gearbox, and a gas-electric engine with 208 horsepower are standard on all versions." )
  assert car.save
  end

  test "Please select make of car before saving" do
    car = Car.new(model: "Camry-Hybrid", year: 2022, information:"There are four trim levels for the 2024 Toyota Camry Hybrid: LE, SE, XLE, and XSE. A front-wheel drive system, an electronic continuously variable automatic gearbox, and a gas-electric engine with 208 horsepower are standard on all versions.")
    assert_not car.save
  end

   #similiar tests to put here......

end
