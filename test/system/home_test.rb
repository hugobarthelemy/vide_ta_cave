require "application_system_test_case"

class HomeTest < ApplicationSystemTestCase
  test "visiting the home" do
    visit "/"
    assert_selector "h1", text: "Vide ta cave !"
  end
end
