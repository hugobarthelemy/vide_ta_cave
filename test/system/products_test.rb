require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visiting the index" do
    login_as users(:george)
    visit "products/index"
    assert_selector "h1", text: "Les produits actuellement en vente"
  end
end
