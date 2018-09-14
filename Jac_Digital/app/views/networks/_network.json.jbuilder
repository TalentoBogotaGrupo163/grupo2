json.extract! network, :id, :name, :url, :company_id, :created_at, :updated_at
json.url network_url(network, format: :json)
