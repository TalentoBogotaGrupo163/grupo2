class Location < ApplicationRecord
  #RELACIONES:  
  belongs_to :city
  has_many :company

  #VALIDACIONES:
  validates :name, presence:{message:"Digite por favor el nombre de la Localidad"}
  validates :mayor_name, presence:{message:"Es obligatorio indicar el nombre del Alcalde Local"}
  validates :id_number, presence:{message:"Número de Identificación obligatorio"}
end
