require "application_system_test_case"

class FlatsTest < ApplicationSystemTestCase
  test "visiting the index" do
    # Go to the homepage
    visit "/"

    # Verify the h1 and check if it contains the text "Flats"
    assert_selector "h1", text: "Flats"
  end
end
