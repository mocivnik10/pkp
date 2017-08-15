require 'test_helper'

class FinalIprTadControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get final_ipr_tad_index_url
    assert_response :success
  end

end
