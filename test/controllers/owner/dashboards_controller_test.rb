require 'test_helper'

class Owner::DashboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get owner_dashboards_show_url
    assert_response :success
  end

end
