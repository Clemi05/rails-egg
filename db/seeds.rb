# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning up database..."
Hen.destroy_all
puts "Database cleaned"

Hen.create(name: "Crazy Chicken", description: "This is a crazy chickent! The craziest breed of chicken of the world", rating: 4.6, price_per_day: 20, breed: "Crazy Chicken", eggs_per_day: 10)

puts 'Done!'
