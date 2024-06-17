require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test "valid signup information" do
    get signup_path
    assert_difference 'User.count', 1 do
      post users_url, params: { user: { id:1, name: "Example User", email: "user2@example.com",
                                        password: "password", password_confirmation: "password" } }
    end
  end

  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_url, params: { user: { id:1, name: "", email: "user2@example.com",
                                        password: "foo", password_confirmation: "bar" } }
    end
    assert_template 'users/new'
  end

end