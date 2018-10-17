class Position < ApplicationRecord
    # RELACIONES:
    has_many :system_users
    has_many :members
end
