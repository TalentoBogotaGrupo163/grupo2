json.extract! company, :id, :name, :address, :email, :location_id, :created_at, :updated_at
json.url company_url(company, format: :json)
