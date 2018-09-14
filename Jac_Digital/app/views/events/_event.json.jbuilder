json.extract! event, :id, :name, :description, :state_id, :date_initial, :date_end, :hour_initial, :hour_end, :venue_id, :value, :organizer, :created_at, :updated_at
json.url event_url(event, format: :json)
