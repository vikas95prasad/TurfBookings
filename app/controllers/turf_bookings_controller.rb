class TurfBookingsController < ApplicationController

  before_action :authenticate_user!

  def index
    @bookings = TurfBooking.all
  end

  def show
    @booking = TurfBooking.find(params[:id])
  end

  def new
    @booking = TurfBooking.new
  end

  def create
    @booking = TurfBooking.new(params.require(:turf_booking).permit(:name, :phone, :address, :book_date, :start_time, :end_time, :payment_options, :amount, :status))

    if @booking.save
      redirect_to turf_bookings_path, :notice=> 'Booking was successfully created.'
    else
      redirect_to new_turf_booking_path, :alert=> 'Error! Please try again'
    end
  end

  def edit
    @booking = TurfBooking.find(params[:id])
  end

  def update
    @booking = TurfBooking.find(params[:id])

    if @booking.update(params.require(:turf_booking).permit(:name, :phone, :address, :book_date, :start_time, :end_time, :payment_options, :amount, :status))
      redirect_to turf_bookings_path, :notice=> 'Booking was successfully updated.'
    else
      redirect_to new_turf_booking_path, :alert=> 'Error! Please try again'
    end
  end

  def destroy
    @booking = TurfBooking.find(params[:id])
    if @booking.destroy
      redirect_to turf_bookings_path, :notice => 'Booking was successfully deleted.'
    else
      redirect_to turf_bookings_path, :alert => 'Error! Please try again'
    end
  end
end
