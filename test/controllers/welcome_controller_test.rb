require "test_helper"

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get Contact" do
    get welcome_Contact_url
    assert_response :success
  end
end
