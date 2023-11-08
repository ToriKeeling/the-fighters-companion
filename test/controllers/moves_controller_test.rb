require "test_helper"

class MovesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "index" do
    get "/moves.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Move.count, data.length
  end
end
