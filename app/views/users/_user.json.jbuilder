json.extract! user, :id, :name, :password, :role_id, :email, :user, :state_id, :birth, :created_at, :updated_at
json.url user_url(user, format: :json)
