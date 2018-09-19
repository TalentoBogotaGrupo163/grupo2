class User < ApplicationRecord
  belongs_to :role
  belongs_to :state
  has_and_belongs_to_many :phones
end
