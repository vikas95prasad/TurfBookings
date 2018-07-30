json.extract! turf_detail, :id, :name, :phone, :address, :created_at, :updated_at
json.url turf_detail_url(turf_detail, format: :json)
