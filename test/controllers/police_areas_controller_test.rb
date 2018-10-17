require 'test_helper'

class PoliceAreasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @police_area = police_areas(:one)
  end

  test "should get index" do
    get police_areas_url
    assert_response :success
  end

  test "should get new" do
    get new_police_area_url
    assert_response :success
  end

  test "should create police_area" do
    assert_difference('PoliceArea.count') do
      post police_areas_url, params: { police_area: { address: @police_area.address, area_name: @police_area.area_name, email: @police_area.email, id_area: @police_area.id_area } }
    end

    assert_redirected_to police_area_url(PoliceArea.last)
  end

  test "should show police_area" do
    get police_area_url(@police_area)
    assert_response :success
  end

  test "should get edit" do
    get edit_police_area_url(@police_area)
    assert_response :success
  end

  test "should update police_area" do
    patch police_area_url(@police_area), params: { police_area: { address: @police_area.address, area_name: @police_area.area_name, email: @police_area.email, id_area: @police_area.id_area } }
    assert_redirected_to police_area_url(@police_area)
  end

  test "should destroy police_area" do
    assert_difference('PoliceArea.count', -1) do
      delete police_area_url(@police_area)
    end

    assert_redirected_to police_areas_url
  end
end
