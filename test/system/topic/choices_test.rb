require "application_system_test_case"

class Topic::ChoicesTest < ApplicationSystemTestCase
  setup do
    @topic_choice = topic_choices(:one)
  end

  test "visiting the index" do
    visit topic_choices_url
    assert_selector "h1", text: "Topic/Choices"
  end

  test "creating a Choice" do
    visit topic_choices_url
    click_on "New Topic/Choice"

    click_on "Create Choice"

    assert_text "Choice was successfully created"
    click_on "Back"
  end

  test "updating a Choice" do
    visit topic_choices_url
    click_on "Edit", match: :first

    click_on "Update Choice"

    assert_text "Choice was successfully updated"
    click_on "Back"
  end

  test "destroying a Choice" do
    visit topic_choices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Choice was successfully destroyed"
  end
end
