class DocumentType < ApplicationRecord
    #relaciones
    has_many :documents
    #Validaciones
    validates :name, presence:{message:"Por favor ingresar Nombre del Tipo de documento."}
end
