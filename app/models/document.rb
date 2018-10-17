class Document < ApplicationRecord
  # RELACIONES:
  belongs_to :document_type
  belongs_to :state
  belongs_to :company
  # VALIDACIONES:
  validates :name, presence:{message:"Por favor ingresar Nombre del documento."}
  validates :route, presence:{message:"Por favor ingresar la ubicación del documento."}
end
