# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Location.destroy_all

james = User.create(first_name: "James", last_name: "Gluegun", email: "sleeping@home.com", password: "password")
lipton = User.create(first_name: "Green", last_name: "Tea", email: "desk@home.com", password: "password")
gusto = User.create(first_name: "Moe", last_name: "ba", email: "kumain@home.com", password: "password")
yu = User.create(first_name: "Wana", last_name: "it", email: "that@home.com", password: "password")
grey = User.create(first_name: "Greytest", last_name: "Evir", email: "tabel@home.com", password: "password")
you = User.create(first_name: "Bheta", last_name: "Wash", email: "that@home.com", password: "password")
janice = User.create(first_name: "Janice", last_name: "Cabbage", email: "sofa@home.com", password: "password")

# Location 

banff = (name: "Banff", latitude: 51.148951181175335, longitude: -115.49452009610545)

(make: "ford", model: "F150", year_model: 1999)


