class TurfBookingsController < ApplicationController
  before_action :set_turf_booking, only: [:show, :edit, :update, :destroy]

  # GET /turf_bookings
  # GET /turf_bookings.json
  def index
    @turf_bookings = TurfBooking.all
  end

  # GET /turf_bookings/1
  # GET /turf_bookings/1.json
  def show
  end

  # GET /turf_bookings/new
  def new
    @turf_booking = TurfBooking.new
  end

  # GET /turf_bookings/1/edit
  def edit
  end

  # POST /turf_bookings
  # POST /turf_bookings.json
  def create
    @turf_booking = TurfBooking.new(turf_booking_params)

    respond_to do |format|
      if @turf_booking.save
        format.html { redirect_to @turf_booking, notice: 'Turf booking was successfully created.' }
        format.json { render :show, status: :created, location: @turf_booking }
      else
        format.html { render :new }
        format.json { render json: @turf_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /turf_bookings/1
  # PATCH/PUT /turf_bookings/1.json
  def update
    respond_to do |format|
      if @turf_booking.update(turf_booking_params)
        format.html { redirect_to @turf_booking, notice: 'Turf booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @turf_booking }
      else
        format.html { render :edit }
        format.json { render json: @turf_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /turf_bookings/1
  # DELETE /turf_bookings/1.json
  def destroy
    @turf_booking.destroy
    respond_to do |format|
      format.html { redirect_to turf_bookings_url, notice: 'Turf booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_turf_booking
      @turf_booking = TurfBooking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def turf_booking_params
      params.require(:turf_booking).permit(:name, :phone, :address, :book_date, :start_time, :end_time, :total_duration, :amount, :status)
    end
end
