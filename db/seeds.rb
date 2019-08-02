# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
City.first_or_create([
    {name: 'Medellín'},
    {name: 'Bogotá'},
    {name: 'Barranquilla'},
    {name: 'Manizales'},
    {name: 'Cali'},
    {name: 'Cartagena'},
    {name: 'Bucaramanga'}
  ])

Type.first_or_create([
  {name: 'Presencial'},
  {name: 'Virtual'}
  ])
