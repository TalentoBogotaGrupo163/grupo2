require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get events_url
    assert_response :success
  end

  test "should get new" do
    get new_event_url
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post events_url, params: { event: { company_id: @event.company_id, date_end: @event.date_end, date_initial: @event.date_initial, description: @event.description, hour_end: @event.hour_end, hour_initial: @event.hour_initial, name: @event.name, organizer: @event.organizer, state_id: @event.state_id, value: @event.value, venue_id: @event.venue_id } }
    end

    assert_redirected_to event_url(Event.last)
  end

  test "should show event" do
    get event_url(@event)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_url(@event)
    assert_response :success
  end

  test "should update event" do
    patch event_url(@event), params: { event: { company_id: @event.company_id, date_end: @event.date_end, date_initial: @event.date_initial, description: @event.description, hour_end: @event.hour_end, hour_initial: @event.hour_initial, name: @event.name, organizer: @event.organizer, state_id: @event.state_id, value: @event.value, venue_id: @event.venue_id } }
    assert_redirected_to event_url(@event)
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete event_url(@event)
    end

    assert_redirected_to events_url
  end
end
