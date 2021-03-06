require 'test_helper'

class StylesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @style = styles(:one)
  end

  test "should get index" do
    get styles_url, as: :json
    assert_response :success
  end

  test "should create style" do
    assert_difference('Style.count') do
      post styles_url, params: { style: { date: @style.date, durability: @style.durability, image: @style.image, method: @style.method, name: @style.name, own: @style.own, privacy: @style.privacy, products: @style.products, tags: @style.tags, type_id: @style.type_id, user_id: @style.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show style" do
    get style_url(@style), as: :json
    assert_response :success
  end

  test "should update style" do
    patch style_url(@style), params: { style: { date: @style.date, durability: @style.durability, image: @style.image, method: @style.method, name: @style.name, own: @style.own, privacy: @style.privacy, products: @style.products, tags: @style.tags, type_id: @style.type_id, user_id: @style.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy style" do
    assert_difference('Style.count', -1) do
      delete style_url(@style), as: :json
    end

    assert_response 204
  end
end
