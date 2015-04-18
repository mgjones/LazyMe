# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Refrigerator.delete_all

Refrigerator.create!(name: "Washer-3000", brand: "woosh", price: 3999, rating: 4, popularity: 0, keyfeatures: "superflux cooling system")
Refrigerator.create!(name: "Washer-3001", brand: "woosh", price: 4999, rating: 3, popularity: 0, keyfeatures: "superflux cooling system 2.0")
Refrigerator.create!(name: "Washer-3002", brand: "woosh", price: 5999, rating: 4, popularity: 0, keyfeatures: "superflux cooling system 3.0")
Refrigerator.create!(name: "Washer-3003", brand: "woosh", price: 6999, rating: 4, popularity: 0, keyfeatures: "superflux cooling system 4.0")
Refrigerator.create!(name: "Washer-3004", brand: "woosh", price: 699, rating: 2, popularity: 0, keyfeatures: "superflux cooling system 5.0")
Refrigerator.create!(name: "Washer-3005", brand: "woosh", price: 599, rating: 5, popularity: 0, keyfeatures: "superflux cooling system 6.0")
Refrigerator.create!(name: "Washer-3006", brand: "woosh", price: 139, rating: 5, popularity: 0, keyfeatures: "superflux cooling system 7.0")
Refrigerator.create!(name: "George Foreman Fridge", brand: "Foreman Grill", price: 999, rating: 4.5, popularity: 0, keyfeatures: "built in grill")
