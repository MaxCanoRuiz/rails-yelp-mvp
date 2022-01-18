# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
shoom1 = { name: "Dishoom1", address: "7 Boundary St, London E2 7JE", phone_number: "0386867106", category: "chinese" }
shoom2 = { name: "Dishoom2", address: "7 Boundary St, London E2 7JE", phone_number: "0386867106", category: "chinese" }
shoom3 = { name: "Dishoom3", address: "7 Boundary St, London E2 7JE", phone_number: "0386867106", category: "chinese" }
shoom4 = { name: "Dishoom4", address: "7 Boundary St, London E2 7JE", phone_number: "0386867106", category: "chinese" }
shoom5 = { name: "Dishoom5", address: "7 Boundary St, London E2 7JE", phone_number: "0386867106", category: "chinese" }

[ shoom1, shoom2, shoom3, shoom4, shoom5 ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
