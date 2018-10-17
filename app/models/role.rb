class Role < ApplicationRecord
    # RELACIONES:
    has_many :system_users
end
