class User < ApplicationRecord
  include Clearance::User
  # RELACIONES
  has_many :system_users

end
