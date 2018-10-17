class SystemUser < ApplicationRecord
  # RELACIONES:
  belongs_to :user
  belongs_to :role
  belongs_to :state
  has_and_belongs_to_many :phones
  # VALIDACIONES
end
