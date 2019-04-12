require "application_system_test_case"

class PrimaryColorsTest < ApplicationSystemTestCase
  setup do
    @primary_color = primary_colors(:one)
  end

  test "visiting the index" do
    visit primary_colors_url
    assert_selector "h1", text: "Primary Colors"
  end

  test "creating a Primary color" do
    visit primary_colors_url
    click_on "New Primary Color"

    fill_in "Hash code", with: @primary_color.hash_code
    fill_in "Name", with: @primary_color.name
    click_on "Create Primary color"

    assert_text "Primary color was successfully created"
    click_on "Back"
  end

  test "updating a Primary color" do
    visit primary_colors_url
    click_on "Edit", match: :first

    fill_in "Hash code", with: @primary_color.hash_code
    fill_in "Name", with: @primary_color.name
    click_on "Update Primary color"

    assert_text "Primary color was successfully updated"
    click_on "Back"
  end

  test "destroying a Primary color" do
    visit primary_colors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Primary color was successfully destroyed"
  end
end
