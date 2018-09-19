class PoliceArea < ApplicationRecord
    has_and_belongs_to_many :phones
end
