require "application_system_test_case"

class StoresTest < ApplicationSystemTestCase
  setup do
    @store = stores(:one)
  end

  test "visiting the index" do
    visit stores_url
    assert_selector "h1", text: "Stores"
  end

  test "should create store" do
    visit stores_url
    click_on "New store"

    fill_in "Category", with: @store.category
    fill_in "Certifications", with: @store.certifications
    fill_in "Description", with: @store.description
    fill_in "Ingredients", with: @store.ingredients
    fill_in "Made without", with: @store.made_without
    fill_in "Name", with: @store.name
    fill_in "Packaging", with: @store.packaging
    fill_in "Price", with: @store.price
    click_on "Create Store"

    assert_text "Store was successfully created"
    click_on "Back"
  end

  test "should update Store" do
    visit store_url(@store)
    click_on "Edit this store", match: :first

    fill_in "Category", with: @store.category
    fill_in "Certifications", with: @store.certifications
    fill_in "Description", with: @store.description
    fill_in "Ingredients", with: @store.ingredients
    fill_in "Made without", with: @store.made_without
    fill_in "Name", with: @store.name
    fill_in "Packaging", with: @store.packaging
    fill_in "Price", with: @store.price
    click_on "Update Store"

    assert_text "Store was successfully updated"
    click_on "Back"
  end

  test "should destroy Store" do
    visit store_url(@store)
    click_on "Destroy this store", match: :first

    assert_text "Store was successfully destroyed"
  end
end
