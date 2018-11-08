require 'test_helper'

class AlzheimerControllerTest < ActionDispatch::IntegrationTest
  test "should get minicog" do
    get minicog_path
    assert_response :success
    assert_select 'title', 'Minicog | Ham@SBS information medical dept'
  end

end
