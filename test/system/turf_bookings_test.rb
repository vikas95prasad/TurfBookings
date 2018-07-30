require "application_system_test_case"

class TurfBookingsTest < ApplicationSystemTestCase
  setup do
    @turf_booking = turf_bookings(:one)
  end

  test "visiting the index" do
    visit turf_bookings_url
    assert_selector "h1", text: "Turf Bookings"
  end

  test "creating a Turf booking" do
    visit turf_bookings_url
    click_on "New Turf Booking"

    fill_in "Address", with: @turf_booking.address
    fill_in "Amount", with: @turf_booking.amount
    fill_in "Book Date", with: @turf_booking.book_date
    fill_in "End Time", with: @turf_booking.end_time
    fill_in "Name", with: @turf_booking.name
    fill_in "Phone", with: @turf_booking.phone
    fill_in "Start Time", with: @turf_booking.start_time
    fill_in "Status", with: @turf_booking.status
    fill_in "Total Duration", with: @turf_booking.total_duration
    click_on "Create Turf booking"

    assert_text "Turf booking was successfully created"
    click_on "Back"
  end

  test "updating a Turf booking" do
    visit turf_bookings_url
    click_on "Edit", match: :first

    fill_in "Address", with: @turf_booking.address
    fill_in "Amount", with: @turf_booking.amount
    fill_in "Book Date", with: @turf_booking.book_date
    fill_in "End Time", with: @turf_booking.end_time
    fill_in "Name", with: @turf_booking.name
    fill_in "Phone", with: @turf_booking.phone
    fill_in "Start Time", with: @turf_booking.start_time
    fill_in "Status", with: @turf_booking.status
    fill_in "Total Duration", with: @turf_booking.total_duration
    click_on "Update Turf booking"

    assert_text "Turf booking was successfully updated"
    click_on "Back"
  end

  test "destroying a Turf booking" do
    visit turf_bookings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Turf booking was successfully destroyed"
  end
end
