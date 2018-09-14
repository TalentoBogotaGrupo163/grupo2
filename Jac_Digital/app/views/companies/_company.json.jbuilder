json.extract! company, :id, :name, :address, :phone_id, :email, :location_id, :created_at, :updated_at
json.url company_url(company, format: :json)
