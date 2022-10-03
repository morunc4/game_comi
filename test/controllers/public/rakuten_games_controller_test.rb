require "test_helper"

class Public::RakutenGamesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_rakuten_games_index_url
    assert_response :success
  end

  test "should get show" do
    get public_rakuten_games_show_url
    assert_response :success
  end
end
