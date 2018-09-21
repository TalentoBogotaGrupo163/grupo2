# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Role.create(name: 'Administrador', description: 'Administrador del sistema')
State.create(name: 'Activo')
User.create(name: 'María', password:'123456', role_id: 1, email: 'ivonneandreas@hotmail.com', user: 'ivonneandreas', state_id: 1, birth: '')

