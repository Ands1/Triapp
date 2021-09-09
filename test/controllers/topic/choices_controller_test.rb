require "test_helper"

class Topic::ChoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @topic_choice = topic_choices(:one)
  end

  test "should get index" do
    get topic_choices_url
    assert_response :success
  end

  test "should get new" do
    get new_topic_choice_url
    assert_response :success
  end

  test "should create topic_choice" do
    assert_difference('Topic::Choice.count') do
      post topic_choices_url, params: { topic_choice: {  } }
    end

    assert_redirected_to topic_choice_url(Topic::Choice.last)
  end

  test "should show topic_choice" do
    get topic_choice_url(@topic_choice)
    assert_response :success
  end

  test "should get edit" do
    get edit_topic_choice_url(@topic_choice)
    assert_response :success
  end

  test "should update topic_choice" do
    patch topic_choice_url(@topic_choice), params: { topic_choice: {  } }
    assert_redirected_to topic_choice_url(@topic_choice)
  end

  test "should destroy topic_choice" do
    assert_difference('Topic::Choice.count', -1) do
      delete topic_choice_url(@topic_choice)
    end

    assert_redirected_to topic_choices_url
  end
end
