class Document < ApplicationRecord
  #relaciones
  belongs_to :document_type
  belongs_to :state
  belongs_to :company
  #validaciones
  validates :name, presence:{message:"Por favor ingresar Nombre del documento."}
  validates :route, presence:{message:"Por favor ingresar la ubicación del documento."}
end
