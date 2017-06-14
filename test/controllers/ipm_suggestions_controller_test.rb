require 'test_helper'

class IpmSuggestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ipm_suggestion = ipm_suggestions(:one)
  end

  test "should get index" do
    get ipm_suggestions_url
    assert_response :success
  end

  test "should get new" do
    get new_ipm_suggestion_url
    assert_response :success
  end

  test "should create ipm_suggestion" do
    assert_difference('IpmSuggestion.count') do
      post ipm_suggestions_url, params: { ipm_suggestion: { description: @ipm_suggestion.description, icon: @ipm_suggestion.icon, title: @ipm_suggestion.title } }
    end

    assert_redirected_to ipm_suggestion_url(IpmSuggestion.last)
  end

  test "should show ipm_suggestion" do
    get ipm_suggestion_url(@ipm_suggestion)
    assert_response :success
  end

  test "should get edit" do
    get edit_ipm_suggestion_url(@ipm_suggestion)
    assert_response :success
  end

  test "should update ipm_suggestion" do
    patch ipm_suggestion_url(@ipm_suggestion), params: { ipm_suggestion: { description: @ipm_suggestion.description, icon: @ipm_suggestion.icon, title: @ipm_suggestion.title } }
    assert_redirected_to ipm_suggestion_url(@ipm_suggestion)
  end

  test "should destroy ipm_suggestion" do
    assert_difference('IpmSuggestion.count', -1) do
      delete ipm_suggestion_url(@ipm_suggestion)
    end

    assert_redirected_to ipm_suggestions_url
  end
end
