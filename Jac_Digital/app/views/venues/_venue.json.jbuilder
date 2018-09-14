json.extract! venue, :id, :name, :address, :phone_id, :capacity, :created_at, :updated_at
json.url venue_url(venue, format: :json)
