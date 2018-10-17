class DocumentType < ApplicationRecord
    # RELACIONES:
    has_many :documents
    # VALIDACIONES:
    validates :name, presence:{message:"Por favor ingresar Nombre del Tipo de documento."}
end
