require "application_system_test_case"

class User::Topic::AnswersTest < ApplicationSystemTestCase
  setup do
    @user_topic_answer = user_topic_answers(:one)
  end

  test "visiting the index" do
    visit user_topic_answers_url
    assert_selector "h1", text: "User/Topic/Answers"
  end

  test "creating a Answer" do
    visit user_topic_answers_url
    click_on "New User/Topic/Answer"

    click_on "Create Answer"

    assert_text "Answer was successfully created"
    click_on "Back"
  end

  test "updating a Answer" do
    visit user_topic_answers_url
    click_on "Edit", match: :first

    click_on "Update Answer"

    assert_text "Answer was successfully updated"
    click_on "Back"
  end

  test "destroying a Answer" do
    visit user_topic_answers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Answer was successfully destroyed"
  end
end
