class Company < ApplicationRecord

  #RELACIONES:
  belongs_to :location
  has_and_belongs_to_many :phones
  has_many :members
  has_and_belongs_to_many :police_areas
  has_many :documents
  has_many :events
  has_many :networks

  #VALIDACIONES:
  validates :name, presence:{message:"Digite por favor el nombre de la JAC"}
  validates :email, presence:{message:"email Obligatorio"}

end
