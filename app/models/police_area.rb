class PoliceArea < ApplicationRecord
    # RELACIONES:
    has_and_belongs_to_many :phones
    has_and_belongs_to_many :companies
end
