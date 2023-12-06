require "test_helper"

class CarsControllerTest < ActionDispatch::IntegrationTest
test "should display the cars" do
  get cars_url
  assert_response :success
  assert_select 'h1,' 'Cars'
  assert_select '.car', Car.count
end
  setup do
   @car = cars(:one)
 end

 test "should get index " do
   get cars_url
   assert_response :success
 end

 test "shoulde get new" do
   get new_car_url
   assert_response :success

 end

test "should create car" do
  assert_difference('Car.count') do
    post cars_url, params: { car: { make: @car.make, model: @car.model, year: @car.year, information: @information} }
  end
  assert_redirected_to car_url(Car.last)
end
#add more tests....

end
