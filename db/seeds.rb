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


