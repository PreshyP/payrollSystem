require "test_helper"

class SessionDebugControllerTest < ActionDispatch::IntegrationTest
  test "should get show_session" do
    get session_debug_show_session_url
    assert_response :success
  end
end
