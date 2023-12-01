json.extract! reservation, :id, :reserve_date, :room_type, :plan, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
