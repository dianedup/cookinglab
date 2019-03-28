require 'test_helper'

class RecipesControllerTest < ActionDispatch::IntegrationTest
<<<<<<< HEAD
  test "should get new" do
    get recipes_new_url
    assert_response :success
  end

  test "should get create" do
    get recipes_create_url
=======
  test "should get show" do
    get recipes_show_url
>>>>>>> 87c07fcf7904a25a7252de61674b533ccec9fa37
    assert_response :success
  end

end
