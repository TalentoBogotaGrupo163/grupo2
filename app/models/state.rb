class State < ApplicationRecord
    # REALCIONES:
    has_many :system_users
    has_many :members
    has_many :documents
    has_many :events
end
