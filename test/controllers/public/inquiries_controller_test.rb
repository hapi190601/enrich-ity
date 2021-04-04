require 'test_helper'

class Public::InquiriesControllerTest < ActionDispatch::IntegrationTest
  test "should get get" do
    get public_inquiries_get_url
    assert_response :success
  end

  test "should get create" do
    get public_inquiries_create_url
    assert_response :success
  end

  test "should get thank" do
    get public_inquiries_thank_url
    assert_response :success
  end

end
