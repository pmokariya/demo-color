require 'test_helper'

class PrimaryColorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @primary_color = primary_colors(:one)
  end

  test "should get index" do
    get primary_colors_url
    assert_response :success
  end

  test "should get new" do
    get new_primary_color_url
    assert_response :success
  end

  test "should create primary_color" do
    assert_difference('PrimaryColor.count') do
      post primary_colors_url, params: { primary_color: { hash_code: @primary_color.hash_code, name: @primary_color.name } }
    end

    assert_redirected_to primary_color_url(PrimaryColor.last)
  end

  test "should show primary_color" do
    get primary_color_url(@primary_color)
    assert_response :success
  end

  test "should get edit" do
    get edit_primary_color_url(@primary_color)
    assert_response :success
  end

  test "should update primary_color" do
    patch primary_color_url(@primary_color), params: { primary_color: { hash_code: @primary_color.hash_code, name: @primary_color.name } }
    assert_redirected_to primary_color_url(@primary_color)
  end

  test "should destroy primary_color" do
    assert_difference('PrimaryColor.count', -1) do
      delete primary_color_url(@primary_color)
    end

    assert_redirected_to primary_colors_url
  end
end
