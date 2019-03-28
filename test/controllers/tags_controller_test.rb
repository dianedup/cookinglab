require 'test_helper'

class TagsControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get tags_name:string_url
    assert_response :success
  end

end
