json.extract! user, :id, :name, :password, :role_id, :email, :phone_id, :user, :state_id, :birth, :created_at, :updated_at
json.url user_url(user, format: :json)
