require 'test_helper'

class Private::GenresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get private_genres_index_url
    assert_response :success
  end

  test "should get create" do
    get private_genres_create_url
    assert_response :success
  end

  test "should get edit" do
    get private_genres_edit_url
    assert_response :success
  end

  test "should get update" do
    get private_genres_update_url
    assert_response :success
  end

  test "should get destroy" do
    get private_genres_destroy_url
    assert_response :success
  end

end
