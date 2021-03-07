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

dv = Location.create(name: "Death Valley", longitude: 36.53677, latitude: -116.93275, state: "California", url: "https://www.google.com/maps/place/Death+Valley,+CA/@36.5509335,-116.9805691,11.64z/data=!4m18!1m12!4m11!1m3!2m2!1d-116.8281707!2d36.7086183!1m6!1m2!1s0x80c739a21e8fffb1:0x1c897383d723dd25!2sDeath+Valley,+CA!2m2!1d-116.9325408!2d36.5322649!3m4!1s0x80c739a21e8fffb1:0x1c897383d723dd25!8m2!3d36.5322649!4d-116.9325408" )

mdc = Location.create(name: "Mendocino National Forest", longitude: 39.60318, latitude: -122.82759, state: "California", url: "https://www.google.com/maps/place/Mendocino+National+Forest/@39.6030447,-122.8297374,17z/data=!4m12!1m6!3m5!1s0x80823ad465e3e04b:0xf35fea2c425ee99c!2sMendocino+National+Forest!8m2!3d39.6030447!4d-122.8275434!3m4!1s0x80823ad465e3e04b:0xf35fea2c425ee99c!8m2!3d39.6030447!4d-122.8275434" )


