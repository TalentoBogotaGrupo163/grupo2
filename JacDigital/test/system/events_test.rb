require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  setup do
    @event = events(:one)
  end

  test "visiting the index" do
    visit events_url
    assert_selector "h1", text: "Events"
  end

  test "creating a Event" do
    visit events_url
    click_on "New Event"

    fill_in "Company", with: @event.company_id
    fill_in "Date End", with: @event.date_end
    fill_in "Date Initial", with: @event.date_initial
    fill_in "Description", with: @event.description
    fill_in "Hour End", with: @event.hour_end
    fill_in "Hour Initial", with: @event.hour_initial
    fill_in "Name", with: @event.name
    fill_in "Organizer", with: @event.organizer
    fill_in "State", with: @event.state_id
    fill_in "Value", with: @event.value
    fill_in "Venue", with: @event.venue_id
    click_on "Create Event"

    assert_text "Event was successfully created"
    click_on "Back"
  end

  test "updating a Event" do
    visit events_url
    click_on "Edit", match: :first

    fill_in "Company", with: @event.company_id
    fill_in "Date End", with: @event.date_end
    fill_in "Date Initial", with: @event.date_initial
    fill_in "Description", with: @event.description
    fill_in "Hour End", with: @event.hour_end
    fill_in "Hour Initial", with: @event.hour_initial
    fill_in "Name", with: @event.name
    fill_in "Organizer", with: @event.organizer
    fill_in "State", with: @event.state_id
    fill_in "Value", with: @event.value
    fill_in "Venue", with: @event.venue_id
    click_on "Update Event"

    assert_text "Event was successfully updated"
    click_on "Back"
  end

  test "destroying a Event" do
    visit events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Event was successfully destroyed"
  end
end
