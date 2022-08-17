# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

Takumi = {name:"Takumi", phone_number:"0221 34899171", address:"Hohenstaufenring 58, 50674 Köln", category:"japanese"}

BaiLuNoodles = {name:"BaiLu", phone_number:"0221 78948128", address:"Palmstraße 41, 50672 Köln", category:"chinese"}

VeganJunkFoodBar = {name:"Vegan Junk Food Bar", phone_number:"666", address:"Hohenzollernring 21-23, 50672 Köln", category:"belgian"}

IceCreamUnited = {name:"Ice Cream United", phone_number:"777", address:"Brüsseler Str. 71, 50672 Köln", category:"italian"}

BelgischerHof = {name:"Belgischer Hof", phone_number:"0221 54817017", address:"Brüsseler Str. 54, 50674 Köln", category:"french"}

LúabyDanny = {name:"Lúa by Danny", phone_number:"0221 58938033", address:"Brabanter Str. 9, 50674 Köln", category:"french"}

[Takumi, BaiLuNoodles, VeganJunkFoodBar, IceCreamUnited, BelgischerHof, LúabyDanny].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
# Takumi = {name:"", phone_number:"", address:"", category:""}

# Takumi = {name:"", phone_number:"", address:"", category:""}
