require "application_system_test_case"

class RecipeListsTest < ApplicationSystemTestCase
  setup do
    @recipe_list = recipe_lists(:one)
  end

  test "visiting the index" do
    visit recipe_lists_url
    assert_selector "h1", text: "Recipe Lists"
  end

  test "creating a Recipe list" do
    visit recipe_lists_url
    click_on "New Recipe List"

    fill_in "Name", with: @recipe_list.name
    click_on "Create Recipe list"

    assert_text "Recipe list was successfully created"
    click_on "Back"
  end

  test "updating a Recipe list" do
    visit recipe_lists_url
    click_on "Edit", match: :first

    fill_in "Name", with: @recipe_list.name
    click_on "Update Recipe list"

    assert_text "Recipe list was successfully updated"
    click_on "Back"
  end

  test "destroying a Recipe list" do
    visit recipe_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Recipe list was successfully destroyed"
  end
end
