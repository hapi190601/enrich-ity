require 'test_helper'

class Private::SearchesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get private_searches_index_url
    assert_response :success
  end

  test "should get search" do
    get private_searches_search_url
    assert_response :success
  end

end
