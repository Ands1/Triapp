require "test_helper"

class User::Topic::AnswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_topic_answer = user_topic_answers(:one)
  end

  test "should get index" do
    get user_topic_answers_url
    assert_response :success
  end

  test "should get new" do
    get new_user_topic_answer_url
    assert_response :success
  end

  test "should create user_topic_answer" do
    assert_difference('User::Topic::Answer.count') do
      post user_topic_answers_url, params: { user_topic_answer: {  } }
    end

    assert_redirected_to user_topic_answer_url(User::Topic::Answer.last)
  end

  test "should show user_topic_answer" do
    get user_topic_answer_url(@user_topic_answer)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_topic_answer_url(@user_topic_answer)
    assert_response :success
  end

  test "should update user_topic_answer" do
    patch user_topic_answer_url(@user_topic_answer), params: { user_topic_answer: {  } }
    assert_redirected_to user_topic_answer_url(@user_topic_answer)
  end

  test "should destroy user_topic_answer" do
    assert_difference('User::Topic::Answer.count', -1) do
      delete user_topic_answer_url(@user_topic_answer)
    end

    assert_redirected_to user_topic_answers_url
  end
end
