require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    Product.all.each do |product|
      print product.name
      print product.category.name
      p "######"
      print product.user.city.name
    end
    get products_index_url
    assert_response :success
  end
end
