class Company < ApplicationRecord
  #relaciones
  belongs_to :location
  has_and_belongs_to_many :phones
  has_many :menbers
  has_many :documents
  has_many :networks
  has_one :police_areas

  #validaciones
  validates :name, presence:{message:"Campo Obligatorio"}
  validates :address, presence:{message:"Campo Obligatorio"}
  
end
