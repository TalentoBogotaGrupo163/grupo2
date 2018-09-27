# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Crea usuario de ejemplo por el problema de la autenticación
Role.create(name: 'Administrador', description: 'Administrador del sistema')
State.create(name: 'Activo')
User.create(name: 'María', password:'123456', role_id: 1, email: 'ivonneandreas@hotmail.com', user: 'ivonneandreas', state_id: 1, birth: '')
# Crea tipos de documentos por defecto

DocumentType.create(name: 'Constitución de junta de acción comunal de barrio, sector  y vereda')
DocumentType.create(name: 'Constitución cuando existe segregación territorial')
DocumentType.create(name: 'Modificación territorial del radio de acción ')
DocumentType.create(name: 'Constitución de la Asociación de j.a.c. ')
DocumentType.create(name: 'Inscripción de dignatarios: presidente, vicepresidente, secretario, tesorero, fiscal, conciliadores, coordinadores de comités de trabajo empresarial, delegados y suplentes.')
DocumentType.create(name: 'Revocatorias de mandato')
DocumentType.create(name: 'Inscripción de libros: afiliados, actas, tesorería e inventarios')
DocumentType.create(name: 'Reemplazo de libros por motivo de perdida')
DocumentType.create(name: 'Aprobación de la depuración del libro de registro de afiliados')
DocumentType.create(name: 'Reemplazo por motivo de falta de animo asociativo')
DocumentType.create(name: 'Reemplazo por enmendaduras e imprecisiones')
DocumentType.create(name: 'Reemplazo por inoperancia de los órganos de dirección y control ')
DocumentType.create(name: 'Revisión de libros tesorería e inventarios ')
DocumentType.create(name: 'Certificados de Personería jurídica vigente, de representación legal y de dignatarios ')
DocumentType.create(name: 'Copia de estatutos')
DocumentType.create(name: 'Reforma estatutaria')
DocumentType.create(name: 'Sanción, suspensión ,cancelación de la Personería jurídica')
DocumentType.create(name: 'Disolución, liquidación  de la junta comunal')
DocumentType.create(name: 'Procedimiento para las requisiciones ')
DocumentType.create(name: 'Procedimiento de atención para los conflictos internos u organizativos entre órganos y dignatarios.')
DocumentType.create(name: 'Procesos disciplinarios e impugnaciones ')
DocumentType.create(name: 'Procesos disciplinarios ')
DocumentType.create(name: 'Recusación en el proceso disciplinario ')
DocumentType.create(name: 'Procedimiento de atención para contratos de comodato lote y sede propiedad del municipio')

# Crea localidades por defecto
Location.create(name: 'Usaquén', mayor_name: 'alcalde1',id_number: '1',city_id: '1')
Location.create(name: 'Chapinero', mayor_name: 'alcalde1',id_number: '2',city_id: '1')
Location.create(name: 'Santa Fe', mayor_name: 'alcalde1',id_number: '3',city_id: '1')
Location.create(name: 'San Cristóbal', mayor_name: 'alcalde1',id_number: '4',city_id: '1')
Location.create(name: 'Usme', mayor_name: 'alcalde1',id_number: '5',city_id: '1')
Location.create(name: 'Tunjuelito', mayor_name: 'alcalde1',id_number: '6',city_id: '1')
Location.create(name: 'Bosa', mayor_name: 'alcalde1',id_number: '7',city_id: '1')
Location.create(name: 'Kennedy', mayor_name: 'alcalde1',id_number: '8',city_id: '1')
Location.create(name: 'Fontibón', mayor_name: 'alcalde1',id_number: '9',city_id: '1')
Location.create(name: 'Engativá', mayor_name: 'alcalde1',id_number: '10',city_id: '1')
Location.create(name: 'Suba', mayor_name: 'alcalde1',id_number: '11',city_id: '1')
Location.create(name: 'Barrios Unidos', mayor_name: 'alcalde1',id_number: '12',city_id: '1')
Location.create(name: 'Teusaquillo', mayor_name: 'alcalde1',id_number: '13',city_id: '1')
Location.create(name: 'Los Mártires', mayor_name: 'alcalde1',id_number: '14',city_id: '1')
Location.create(name: 'Antonio Nariño', mayor_name: 'alcalde1',id_number: '15',city_id: '1')
Location.create(name: 'Puente Aranda', mayor_name: 'alcalde1',id_number: '16',city_id: '1')
Location.create(name: 'La Candelaria', mayor_name: 'alcalde1',id_number: '17',city_id: '1')
Location.create(name: 'Rafael Uribe Uribe', mayor_name: 'alcalde1',id_number: '18',city_id: '1')
Location.create(name: 'Ciudad Bolívar', mayor_name: 'alcalde1',id_number: '19',city_id: '1')
Location.create(name: 'Sumapaz', mayor_name: 'alcalde1',id_number: '20',city_id: '1')
