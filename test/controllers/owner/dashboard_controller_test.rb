require 'test_helper'

class Owner::DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get owner_dashboard_show_url
    assert_response :success
  end

end
