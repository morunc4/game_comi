require "test_helper"

class Admin::RakutenGamesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_rakuten_games_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_rakuten_games_show_url
    assert_response :success
  end
end
