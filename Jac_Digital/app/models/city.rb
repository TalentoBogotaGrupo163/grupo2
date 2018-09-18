class City < ApplicationRecord
  belongs_to :department
  has_many :locations
end
