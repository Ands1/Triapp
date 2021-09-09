require "test_helper"

class Quiz::TopicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quiz_topic = quiz_topics(:one)
  end

  test "should get index" do
    get quiz_topics_url
    assert_response :success
  end

  test "should get new" do
    get new_quiz_topic_url
    assert_response :success
  end

  test "should create quiz_topic" do
    assert_difference('Quiz::Topic.count') do
      post quiz_topics_url, params: { quiz_topic: {  } }
    end

    assert_redirected_to quiz_topic_url(Quiz::Topic.last)
  end

  test "should show quiz_topic" do
    get quiz_topic_url(@quiz_topic)
    assert_response :success
  end

  test "should get edit" do
    get edit_quiz_topic_url(@quiz_topic)
    assert_response :success
  end

  test "should update quiz_topic" do
    patch quiz_topic_url(@quiz_topic), params: { quiz_topic: {  } }
    assert_redirected_to quiz_topic_url(@quiz_topic)
  end

  test "should destroy quiz_topic" do
    assert_difference('Quiz::Topic.count', -1) do
      delete quiz_topic_url(@quiz_topic)
    end

    assert_redirected_to quiz_topics_url
  end
end
