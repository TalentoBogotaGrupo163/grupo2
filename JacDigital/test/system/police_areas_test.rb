require "application_system_test_case"

class PoliceAreasTest < ApplicationSystemTestCase
  setup do
    @police_area = police_areas(:one)
  end

  test "visiting the index" do
    visit police_areas_url
    assert_selector "h1", text: "Police Areas"
  end

  test "creating a Police area" do
    visit police_areas_url
    click_on "New Police Area"

    fill_in "Area Name", with: @police_area.area_name
    fill_in "Id Area", with: @police_area.id_area
    click_on "Create Police area"

    assert_text "Police area was successfully created"
    click_on "Back"
  end

  test "updating a Police area" do
    visit police_areas_url
    click_on "Edit", match: :first

    fill_in "Area Name", with: @police_area.area_name
    fill_in "Id Area", with: @police_area.id_area
    click_on "Update Police area"

    assert_text "Police area was successfully updated"
    click_on "Back"
  end

  test "destroying a Police area" do
    visit police_areas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Police area was successfully destroyed"
  end
end
