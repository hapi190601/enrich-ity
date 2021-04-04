require 'test_helper'

class Private::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get private_users_index_url
    assert_response :success
  end

  test "should get show" do
    get private_users_show_url
    assert_response :success
  end

  test "should get out" do
    get private_users_out_url
    assert_response :success
  end

end
