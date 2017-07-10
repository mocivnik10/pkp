require 'test_helper'

class ActivityTableControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get activity_table_index_url
    assert_response :success
  end

end
