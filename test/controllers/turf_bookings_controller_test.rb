require 'test_helper'

class TurfBookingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @turf_booking = turf_bookings(:one)
  end

  test "should get index" do
    get turf_bookings_url
    assert_response :success
  end

  test "should get new" do
    get new_turf_booking_url
    assert_response :success
  end

  test "should create turf_booking" do
    assert_difference('TurfBooking.count') do
      post turf_bookings_url, params: { turf_booking: { address: @turf_booking.address, amount: @turf_booking.amount, book_date: @turf_booking.book_date, end_time: @turf_booking.end_time, name: @turf_booking.name, phone: @turf_booking.phone, start_time: @turf_booking.start_time, status: @turf_booking.status, total_duration: @turf_booking.total_duration } }
    end

    assert_redirected_to turf_booking_url(TurfBooking.last)
  end

  test "should show turf_booking" do
    get turf_booking_url(@turf_booking)
    assert_response :success
  end

  test "should get edit" do
    get edit_turf_booking_url(@turf_booking)
    assert_response :success
  end

  test "should update turf_booking" do
    patch turf_booking_url(@turf_booking), params: { turf_booking: { address: @turf_booking.address, amount: @turf_booking.amount, book_date: @turf_booking.book_date, end_time: @turf_booking.end_time, name: @turf_booking.name, phone: @turf_booking.phone, start_time: @turf_booking.start_time, status: @turf_booking.status, total_duration: @turf_booking.total_duration } }
    assert_redirected_to turf_booking_url(@turf_booking)
  end

  test "should destroy turf_booking" do
    assert_difference('TurfBooking.count', -1) do
      delete turf_booking_url(@turf_booking)
    end

    assert_redirected_to turf_bookings_url
  end
end
