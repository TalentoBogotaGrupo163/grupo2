json.extract! document, :id, :document_type_id, :name, :route, :state_id, :company_id, :created_at, :updated_at
json.url document_url(document, format: :json)
