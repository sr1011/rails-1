require "application_system_test_case"

class GataPagesTest < ApplicationSystemTestCase
  setup do
    @gata_page = gata_pages(:one)
  end

  test "visiting the index" do
    visit gata_pages_url
    assert_selector "h1", text: "Gata Pages"
  end

  test "creating a Gata page" do
    visit gata_pages_url
    click_on "New Gata Page"

    fill_in "Data", with: @gata_page.data
    click_on "Create Gata page"

    assert_text "Gata page was successfully created"
    click_on "Back"
  end

  test "updating a Gata page" do
    visit gata_pages_url
    click_on "Edit", match: :first

    fill_in "Data", with: @gata_page.data
    click_on "Update Gata page"

    assert_text "Gata page was successfully updated"
    click_on "Back"
  end

  test "destroying a Gata page" do
    visit gata_pages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gata page was successfully destroyed"
  end
end
