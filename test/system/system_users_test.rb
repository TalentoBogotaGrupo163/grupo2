require "application_system_test_case"

class SystemUsersTest < ApplicationSystemTestCase
  setup do
    @system_user = system_users(:one)
  end

  test "visiting the index" do
    visit system_users_url
    assert_selector "h1", text: "System Users"
  end

  test "creating a System user" do
    visit system_users_url
    click_on "New System User"

    fill_in "Role", with: @system_user.role_id
    fill_in "State", with: @system_user.state_id
    fill_in "User", with: @system_user.user_id
    click_on "Create System user"

    assert_text "System user was successfully created"
    click_on "Back"
  end

  test "updating a System user" do
    visit system_users_url
    click_on "Edit", match: :first

    fill_in "Role", with: @system_user.role_id
    fill_in "State", with: @system_user.state_id
    fill_in "User", with: @system_user.user_id
    click_on "Update System user"

    assert_text "System user was successfully updated"
    click_on "Back"
  end

  test "destroying a System user" do
    visit system_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "System user was successfully destroyed"
  end
end
