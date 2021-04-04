require 'test_helper'

class Private::PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get private_posts_index_url
    assert_response :success
  end

  test "should get show" do
    get private_posts_show_url
    assert_response :success
  end

  test "should get destroy" do
    get private_posts_destroy_url
    assert_response :success
  end

end
