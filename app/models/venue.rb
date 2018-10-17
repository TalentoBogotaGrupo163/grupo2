class Venue < ApplicationRecord
    # RELACIONES:
    has_and_belongs_to_many :phone
    has_many :events
end
