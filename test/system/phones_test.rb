require "application_system_test_case"

class PhonesTest < ApplicationSystemTestCase
  setup do
    @phone = phones(:one)
  end

  test "visiting the index" do
    visit phones_url
    assert_selector "h1", text: "Phones"
  end

  test "creating a Phone" do
    visit phones_url
    click_on "New Phone"

    fill_in "Company", with: @phone.company
    fill_in "Member", with: @phone.member
    fill_in "Number", with: @phone.number
    fill_in "Police Area", with: @phone.police_area
    fill_in "Type", with: @phone.type
    fill_in "User", with: @phone.user
    fill_in "Venue", with: @phone.venue
    click_on "Create Phone"

    assert_text "Phone was successfully created"
    click_on "Back"
  end

  test "updating a Phone" do
    visit phones_url
    click_on "Edit", match: :first

    fill_in "Company", with: @phone.company
    fill_in "Member", with: @phone.member
    fill_in "Number", with: @phone.number
    fill_in "Police Area", with: @phone.police_area
    fill_in "Type", with: @phone.type
    fill_in "User", with: @phone.user
    fill_in "Venue", with: @phone.venue
    click_on "Update Phone"

    assert_text "Phone was successfully updated"
    click_on "Back"
  end

  test "destroying a Phone" do
    visit phones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Phone was successfully destroyed"
  end
end
