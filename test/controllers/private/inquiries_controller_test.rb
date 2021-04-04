require 'test_helper'

class Private::InquiriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get private_inquiries_index_url
    assert_response :success
  end

  test "should get show" do
    get private_inquiries_show_url
    assert_response :success
  end

end
