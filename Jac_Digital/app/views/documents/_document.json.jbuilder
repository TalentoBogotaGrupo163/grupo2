json.extract! document, :id, :document_type_id, :name, :route, :company_id, :state_id, :created_at, :updated_at
json.url document_url(document, format: :json)
