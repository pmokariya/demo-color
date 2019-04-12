require 'test_helper'

class SecondaryColorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @secondary_color = secondary_colors(:one)
  end

  test "should get index" do
    get secondary_colors_url
    assert_response :success
  end

  test "should get new" do
    get new_secondary_color_url
    assert_response :success
  end

  test "should create secondary_color" do
    assert_difference('SecondaryColor.count') do
      post secondary_colors_url, params: { secondary_color: { hash_code: @secondary_color.hash_code, name: @secondary_color.name, primary_color_id: @secondary_color.primary_color_id } }
    end

    assert_redirected_to secondary_color_url(SecondaryColor.last)
  end

  test "should show secondary_color" do
    get secondary_color_url(@secondary_color)
    assert_response :success
  end

  test "should get edit" do
    get edit_secondary_color_url(@secondary_color)
    assert_response :success
  end

  test "should update secondary_color" do
    patch secondary_color_url(@secondary_color), params: { secondary_color: { hash_code: @secondary_color.hash_code, name: @secondary_color.name, primary_color_id: @secondary_color.primary_color_id } }
    assert_redirected_to secondary_color_url(@secondary_color)
  end

  test "should destroy secondary_color" do
    assert_difference('SecondaryColor.count', -1) do
      delete secondary_color_url(@secondary_color)
    end

    assert_redirected_to secondary_colors_url
  end
end
