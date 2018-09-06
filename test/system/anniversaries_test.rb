require "application_system_test_case"

class AnniversariesTest < ApplicationSystemTestCase
  setup do
    @anniversary = anniversaries(:one)
  end

  test "visiting the index" do
    visit anniversaries_url
    assert_selector "h1", text: "Anniversaries"
  end

  test "creating a Anniversary" do
    visit anniversaries_url
    click_on "New Anniversary"

    fill_in "Couple", with: @anniversary.couple_id
    fill_in "Day", with: @anniversary.day
    fill_in "Month", with: @anniversary.month
    fill_in "Title", with: @anniversary.title
    fill_in "Year", with: @anniversary.year
    click_on "Create Anniversary"

    assert_text "Anniversary was successfully created"
    click_on "Back"
  end

  test "updating a Anniversary" do
    visit anniversaries_url
    click_on "Edit", match: :first

    fill_in "Couple", with: @anniversary.couple_id
    fill_in "Day", with: @anniversary.day
    fill_in "Month", with: @anniversary.month
    fill_in "Title", with: @anniversary.title
    fill_in "Year", with: @anniversary.year
    click_on "Update Anniversary"

    assert_text "Anniversary was successfully updated"
    click_on "Back"
  end

  test "destroying a Anniversary" do
    visit anniversaries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Anniversary was successfully destroyed"
  end
end
