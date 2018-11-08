require 'test_helper'

class KanriControllerTest < ActionDispatch::IntegrationTest
  
  test "shout get root" do
    get root_path
    assert_response :success
    assert_select "title", "Home | Ham@SBS information medical dept"
  end
  
  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title","Help | Ham@SBS information medical dept"
  end
  
  test "should get about" do
    get about_path
    assert_response :success
  end

end
