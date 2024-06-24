require "test_helper"

class AreaCategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get area_categories_show_url
    assert_response :success
  end
end
