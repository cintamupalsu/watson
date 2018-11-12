require 'test_helper'

class WatsonControllerTest < ActionDispatch::IntegrationTest
  test "should get conversation" do
    get conversation_path
    assert_response :success
  end

  test "should get discovery" do
    get discovery_path
    assert_response :success
  end

  test "should get natural_language" do
    get natural_language_path
    assert_response :success
  end

  test "should get speech_to_text" do
    get speech_to_text_path
    assert_response :success
  end

end
