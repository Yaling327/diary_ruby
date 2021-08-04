require "application_system_test_case"

class DiaryRubiesTest < ApplicationSystemTestCase
  setup do
    @diary_ruby = diary_rubies(:one)
  end

  test "visiting the index" do
    visit diary_rubies_url
    assert_selector "h1", text: "Diary Rubies"
  end

  test "creating a Diary ruby" do
    visit diary_rubies_url
    click_on "New Diary Ruby"

    fill_in "Body", with: @diary_ruby.body
    fill_in "Title", with: @diary_ruby.title
    click_on "Create Diary ruby"

    assert_text "Diary ruby was successfully created"
    click_on "Back"
  end

  test "updating a Diary ruby" do
    visit diary_rubies_url
    click_on "Edit", match: :first

    fill_in "Body", with: @diary_ruby.body
    fill_in "Title", with: @diary_ruby.title
    click_on "Update Diary ruby"

    assert_text "Diary ruby was successfully updated"
    click_on "Back"
  end

  test "destroying a Diary ruby" do
    visit diary_rubies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Diary ruby was successfully destroyed"
  end
end
