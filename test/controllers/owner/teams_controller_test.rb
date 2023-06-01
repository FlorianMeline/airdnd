require "test_helper"

class Owner::TeamsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get owner_teams_index_url
    assert_response :success
  end

  test "should get new" do
    get owner_teams_new_url
    assert_response :success
  end

  test "should get create" do
    get owner_teams_create_url
    assert_response :success
  end
end
