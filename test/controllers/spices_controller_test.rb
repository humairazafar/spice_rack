require "test_helper"

class SpicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spice = spices(:one)
  end

  test "should get index" do
    get spices_url, as: :json
    assert_response :success
  end

  test "should create spice" do
    assert_difference('Spice.count') do
      post spices_url, params: { spice: { details: @spice.details, img_url: @spice.img_url, name: @spice.name } }, as: :json
    end

    assert_response 201
  end

  test "should show spice" do
    get spice_url(@spice), as: :json
    assert_response :success
  end

  test "should update spice" do
    patch spice_url(@spice), params: { spice: { details: @spice.details, img_url: @spice.img_url, name: @spice.name } }, as: :json
    assert_response 200
  end

  test "should destroy spice" do
    assert_difference('Spice.count', -1) do
      delete spice_url(@spice), as: :json
    end

    assert_response 204
  end
end
