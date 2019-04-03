require 'test_helper'

class Owner::ChangesProposalsControllerTest < ActionDispatch::IntegrationTest
  test "should get accept" do
    get owner_changes_proposals_accept_url
    assert_response :success
  end

  test "should get refuse" do
    get owner_changes_proposals_refuse_url
    assert_response :success
  end

end
