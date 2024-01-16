require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "create" do
    assert_difference "User.count", 1 do
      post "/users.json", params: { name: "Test", email: "test@test.com", password: "password", password_confirmation: "password" }
      assert_response 201
    end
  end
end

# require "test_helper"

# class UsersControllerTest < ActionDispatch::IntegrationTest
#   test "create" do
#     assert_difference "User.count", 1 do
#       post "/users", params: { name: "Test", email: "test@test.com", password: "password", password_confirmation: "password" }.to_json, headers: { 'Content-Type' => 'application/json' }
#       assert_response 201
#     end
#   end
# end

