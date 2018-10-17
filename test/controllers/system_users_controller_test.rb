require 'test_helper'

class SystemUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @system_user = system_users(:one)
  end

  test "should get index" do
    get system_users_url
    assert_response :success
  end

  test "should get new" do
    get new_system_user_url
    assert_response :success
  end

  test "should create system_user" do
    assert_difference('SystemUser.count') do
      post system_users_url, params: { system_user: { role_id: @system_user.role_id, state_id: @system_user.state_id, user_id: @system_user.user_id } }
    end

    assert_redirected_to system_user_url(SystemUser.last)
  end

  test "should show system_user" do
    get system_user_url(@system_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_system_user_url(@system_user)
    assert_response :success
  end

  test "should update system_user" do
    patch system_user_url(@system_user), params: { system_user: { role_id: @system_user.role_id, state_id: @system_user.state_id, user_id: @system_user.user_id } }
    assert_redirected_to system_user_url(@system_user)
  end

  test "should destroy system_user" do
    assert_difference('SystemUser.count', -1) do
      delete system_user_url(@system_user)
    end

    assert_redirected_to system_users_url
  end
end
