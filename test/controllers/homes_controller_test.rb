require 'test_helper'

class HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get homes_index_url
    assert_response :success
  end

  test "should get booking" do
    get homes_booking_url
    assert_response :success
  end

  test "should get about_me" do
    get homes_about_me_url
    assert_response :success
  end

  test "should get contact_us" do
    get homes_contact_us_url
    assert_response :success
  end

end
