require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    login_as users(:george)
    get products_index_url
    assert_response :success
  end

end
