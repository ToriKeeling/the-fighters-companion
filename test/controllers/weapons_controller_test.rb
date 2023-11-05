require "test_helper"

class WeaponsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "index" do
    get "/weapons.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Weapon.count, data.length
  end
end
