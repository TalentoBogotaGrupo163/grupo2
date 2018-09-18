class Company < ApplicationRecord
  belongs_to :location
  has_and_belongs_to_many :phones
  has_many :menbers
  has_many :documents
end
