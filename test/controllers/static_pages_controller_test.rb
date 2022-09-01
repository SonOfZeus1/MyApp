require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get leave_feedback" do
    get static_pages_leave_feedback_url
    assert_response :success
  end
end
