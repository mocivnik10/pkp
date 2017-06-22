require 'test_helper'

class AboutProjectControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get about_project_index_url
    assert_response :success
  end

end
