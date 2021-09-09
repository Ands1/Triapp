require "application_system_test_case"

class Quiz::TopicsTest < ApplicationSystemTestCase
  setup do
    @quiz_topic = quiz_topics(:one)
  end

  test "visiting the index" do
    visit quiz_topics_url
    assert_selector "h1", text: "Quiz/Topics"
  end

  test "creating a Topic" do
    visit quiz_topics_url
    click_on "New Quiz/Topic"

    click_on "Create Topic"

    assert_text "Topic was successfully created"
    click_on "Back"
  end

  test "updating a Topic" do
    visit quiz_topics_url
    click_on "Edit", match: :first

    click_on "Update Topic"

    assert_text "Topic was successfully updated"
    click_on "Back"
  end

  test "destroying a Topic" do
    visit quiz_topics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Topic was successfully destroyed"
  end
end
