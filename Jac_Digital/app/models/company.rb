class Company < ApplicationRecord
  belongs_to :phone
  belongs_to :location
end
