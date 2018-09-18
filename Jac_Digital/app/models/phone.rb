class Phone < ApplicationRecord
    has_and_belongs_to_many :companies
    has_and_belongs_to_many :members
    has_and_belongs_to_many :police_areas
    has_and_belongs_to_many :users
    has_and_belongs_to_many :venues
end
