class Phone < ApplicationRecord

    # RELACIONES:
    has_and_belongs_to_many :companies
    has_and_belongs_to_many :system_users
    has_and_belongs_to_many :members
    has_and_belongs_to_many :police_areas
    has_and_belongs_to_many :venues
    # VALIDACIONES:
    validates :number, presence:{message:"Número de Teléfono Obligatorio"}
    #ENUM
    enum type_phone: {"Móvil":0, "Casa":1, "Trabajo":2, "Fax":3, "Otro":4, "Particular":5}

end
