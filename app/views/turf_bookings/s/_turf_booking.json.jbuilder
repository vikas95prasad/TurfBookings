json.extract! turf_booking, :id, :name, :phone, :address, :book_date, :start_time, :end_time, :total_duration, :amount, :status, :created_at, :updated_at
json.url turf_booking_url(turf_booking, format: :json)
