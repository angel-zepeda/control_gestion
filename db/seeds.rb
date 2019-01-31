# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: "judith.rosas@issste.gob.mx", password: "judith.rosas@issste.gob.mx", password_confirmation: "judith.rosas@issste.gob.mx", role: "secretaria")
User.create(email: "isrmiranda@issste.gob.mx", password: "isrmiranda@issste.gob.mx", password_confirmation: "isrmiranda@issste.gob.mx", role: "integrador")
User.create(email: "pablo.albarran@issste.gob.mx", password: "pablo.albarran@issste.gob.mx", password_confirmation: "pablo.albarran@issste.gob.mx", role: 'coordinador')
