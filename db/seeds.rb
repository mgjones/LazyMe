# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Refrigerator.delete_all

Refrigerator.create!(name: "Washer-3000", price: 3999, rating: 4, popularity: 0, keyfeatures: "superflux cooling system")
Refrigerator.create!(name: "Washer-3001", price: 4999, rating: 3, popularity: 0, keyfeatures: "superflux cooling system 2.0")
Refrigerator.create!(name: "Washer-3002", price: 5999, rating: 4, popularity: 0, keyfeatures: "superflux cooling system 3.0")
Refrigerator.create!(name: "Washer-3003", price: 6999, rating: 4, popularity: 0, keyfeatures: "superflux cooling system 4.0")
Refrigerator.create!(name: "Washer-3004", price: 699, rating: 2, popularity: 0, keyfeatures: "superflux cooling system 5.0")
Refrigerator.create!(name: "Washer-3005", price: 599, rating: 5, popularity: 0, keyfeatures: "superflux cooling system 6.0")
Refrigerator.create!(name: "Washer-3006", price: 139, rating: 5, popularity: 0, keyfeatures: "superflux cooling system 7.0")
Refrigerator.create!(name: "George Foreman Fridge", price: 999, rating: 4.5, popularity: 0, keyfeatures: "built in grill")
