require "test_helper"

class UserTest < ActiveSupport::TestCase
 test "Should be able to create a user" do
   user = FactoryBot.create(:user)
   assert user.valid?
 end
end
