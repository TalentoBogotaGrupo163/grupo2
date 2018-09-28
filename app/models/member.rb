class Member < ApplicationRecord
  belongs_to :position
  belongs_to :company
  belongs_to :state
  has_and_belongs_to_many :phones
end
