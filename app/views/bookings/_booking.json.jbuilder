json.extract! booking, :id, :reserve_name, :reserve_date, :room_type, :plan, :created_at, :updated_at
json.url booking_url(booking, format: :json)
