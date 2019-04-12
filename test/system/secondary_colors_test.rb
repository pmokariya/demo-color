require "application_system_test_case"

class SecondaryColorsTest < ApplicationSystemTestCase
  setup do
    @secondary_color = secondary_colors(:one)
  end

  test "visiting the index" do
    visit secondary_colors_url
    assert_selector "h1", text: "Secondary Colors"
  end

  test "creating a Secondary color" do
    visit secondary_colors_url
    click_on "New Secondary Color"

    fill_in "Hash code", with: @secondary_color.hash_code
    fill_in "Name", with: @secondary_color.name
    fill_in "Primary color", with: @secondary_color.primary_color_id
    click_on "Create Secondary color"

    assert_text "Secondary color was successfully created"
    click_on "Back"
  end

  test "updating a Secondary color" do
    visit secondary_colors_url
    click_on "Edit", match: :first

    fill_in "Hash code", with: @secondary_color.hash_code
    fill_in "Name", with: @secondary_color.name
    fill_in "Primary color", with: @secondary_color.primary_color_id
    click_on "Update Secondary color"

    assert_text "Secondary color was successfully updated"
    click_on "Back"
  end

  test "destroying a Secondary color" do
    visit secondary_colors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Secondary color was successfully destroyed"
  end
end
