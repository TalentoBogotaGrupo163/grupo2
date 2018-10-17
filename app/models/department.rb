class Department < ApplicationRecord
    #RELACIONES:
    has_many :cities

    #VALIDACIONES:
    validates :id_department, presence:{message:"Código Obligatorio."}
    validates :name, presence:{message:"Por favor ingrese el nombre."}
    validates :initial, presence:{message:"Ingrese las Iniciales del Departamento."}

end
