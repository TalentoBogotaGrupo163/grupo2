class Member < ApplicationRecord
  belongs_to :position
  belongs_to :phone
  belongs_to :company
  belongs_to :state
end
