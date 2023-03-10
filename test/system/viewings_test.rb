require "application_system_test_case"

class ViewingsTest < ApplicationSystemTestCase
  setup do
    @viewing = viewings(:one)
  end

  test "visiting the index" do
    visit viewings_url
    assert_selector "h1", text: "Viewings"
  end

  test "should create viewing" do
    visit viewings_url
    click_on "New viewing"

    fill_in "Date", with: @viewing.date
    fill_in "Property", with: @viewing.property_id
    fill_in "User", with: @viewing.user_id
    click_on "Create Viewing"

    assert_text "Viewing was successfully created"
    click_on "Back"
  end

  test "should update Viewing" do
    visit viewing_url(@viewing)
    click_on "Edit this viewing", match: :first

    fill_in "Date", with: @viewing.date
    fill_in "Property", with: @viewing.property_id
    fill_in "User", with: @viewing.user_id
    click_on "Update Viewing"

    assert_text "Viewing was successfully updated"
    click_on "Back"
  end

  test "should destroy Viewing" do
    visit viewing_url(@viewing)
    click_on "Destroy this viewing", match: :first

    assert_text "Viewing was successfully destroyed"
  end
end
