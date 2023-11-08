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

  test "show" do
    get "/weapons/#{Weapon.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "description", "image_url", "created_at", "updated_at"], data.keys
  end

  def show
    @weapon = Weapon.find_by(id: params[:id])
    render :show
  end
end
