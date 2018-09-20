class City < ApplicationRecord
  #RELACIONES:
  belongs_to :department
  has_many :locations

  #VALIDACIONES:
  validates :id_city, presence:{message:"Código Obligatorio."}
  validates :name, presence:{message:"Por favor ingresar Nombre de Ciudad."}
end
