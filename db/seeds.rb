# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "Cleaning up database..."
Booking.destroy_all
Hen.destroy_all
User.destroy_all
puts "Database cleaned"

puts "Creating Hens..."
hen1 = Hen.new(name: "Marie-France", description: "Marie-France is a Crazy Hen, the craziest breed of hen in the world! She runs all day and lays crazy eggs", rating: 3.6, price_per_day: 10, breed: "Crazy Hen", eggs_per_day: 6, location: "Rue Arsène Houssaye 11, 75008 Paris")
file = URI.open('https://res.cloudinary.com/charlotte-smets/image/upload/v1637060480/jacqueline_hfxdpw.jpg')
hen1.photo.attach(io: file, filename: 'hen1.png', content_type:'img/png')
hen1.save!

hen2 = Hen.new(name: "Suzanne", description: "Suzanne is a Mega Hen, the best breed of hen in the world! She runs all day and lays mega eggs. She is super friendly with kids!", rating: 4.6, price_per_day: 100, breed: "Mega Hen", eggs_per_day: 50, location: "Rue du Cherche-midi 22, 75006 Paris")
file = URI.open('https://res.cloudinary.com/charlotte-smets/image/upload/v1637144828/shannon-vandenheuvel-bI9AeUn15_A-unsplash_sfviyx.jpg')
hen2.photo.attach(io: file, filename: 'hen1.png', content_type:'img/png')
hen2.save!

hen3 = Hen.new(name: "Aristide", description: "Aristide is a Stupid Hen is the stupidiest breed of hen in the world! She is very stupid and lays stupids eggs", rating: 1.1, price_per_day: 1, breed: "Stupid Hen", eggs_per_day: 2, location: "Rue Saint-Dominique 101, 75007 Paris")
file = URI.open('https://res.cloudinary.com/charlotte-smets/image/upload/v1637073577/sippakorn-yamkasikorn-wWIK8hnESnY-unsplash_xgxg19.jpg')
hen3.photo.attach(io: file, filename: 'hen1.png', content_type:'img/png')
hen3.save!

hen4 = Hen.new(name: "Jacqueline", description: "Jacqueline is a Cool Hen, the coolest breed of hen in the world! She is soooooo cooooool and lays very very coooool eggs.", rating: 4.1, price_per_day: 15, breed: "Stupid Hen", eggs_per_day: 8, location: "30 rue de Babylone, 75007 Paris")
file = URI.open('https://res.cloudinary.com/charlotte-smets/image/upload/v1637060480/jacqueline_hfxdpw.jpg')
hen4.photo.attach(io: file, filename: 'hen1.png', content_type:'img/png')
hen4.save!

hen5 = Hen.new(name: "Victorine", description: "Victorine is a very classic Hen, nothing really important to say about this one. Lays very classic eggs, perfect for an omelette.", rating: 3.5, price_per_day: 25, breed: "Stupid Hen", eggs_per_day: 25, location: "20 rue Poissonnière, 75002 Paris")
file = URI.open('https://res.cloudinary.com/charlotte-smets/image/upload/v1637144828/shannon-vandenheuvel-bI9AeUn15_A-unsplash_sfviyx.jpg')
hen5.photo.attach(io: file, filename: 'hen1.png', content_type:'img/png')
hen5.save!

puts "Hens created!"

puts "Creating Users..."
User.create(first_name: "Charlotte", last_name: "Smets", email: "charlotte@gmail.com", password: "123456")
User.create(first_name: "Mohammad", last_name: "Ewaz", email: "mohammad@gmail.com", password: "123456")
User.create(first_name: "Clement", last_name: "Azalbert", email: "clement@gmail.com", password: "123456")

puts 'Done!'
