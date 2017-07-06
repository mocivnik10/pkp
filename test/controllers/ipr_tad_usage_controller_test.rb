require 'test_helper'

class IprTadUsageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ipr_tad_usage_index_url
    assert_response :success
  end

end
