# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning up database..."
Booking.destroy_all
Hen.destroy_all
User.destroy_all
puts "Database cleaned"

puts "Creating Hens..."
Hen.create(name: "Marie-France", description: "Marie-France is a Crazy Hen, the craziest breed of hen in the world! She runs all day and lays crazy eggs", rating: 3.6, price_per_day: 10, breed: "Crazy Hen", eggs_per_day: 6, profile_picture: "https://res.cloudinary.com/charlotte-smets/image/upload/v1637144830/william-moreland-auijD19Byq8-unsplash_pbjcxg.jpg")
Hen.create(name: "Suzanne", description: "Suzanne is a Mega Hen, the best breed of hen in the world! She runs all day and lays mega eggs and is very nice with childreens", rating: 4.6, price_per_day: 100, breed: "Mega Hen", eggs_per_day: 50, profile_picture: "https://res.cloudinary.com/charlotte-smets/image/upload/v1637144828/shannon-vandenheuvel-bI9AeUn15_A-unsplash_sfviyx.jpg")
Hen.create(name: "Aristide", description: "Aristide is a Stupid Hen is the stupidiest breed of hen in the world! She is very stupid and lays stupids eggs", rating: 1.1, price_per_day: 1, breed: "Stupid Hen", eggs_per_day: 2, profile_picture: "https://res.cloudinary.com/charlotte-smets/image/upload/v1637073577/sippakorn-yamkasikorn-wWIK8hnESnY-unsplash_xgxg19.jpg")
Hen.create(name: "Jacqueline", description: "Jacqueline is a Cool Hen, the coolest breed of hen in the world! She is soooooo cooooool and lays very very coooool eggs.", rating: 4.1, price_per_day: 15, breed: "Stupid Hen", eggs_per_day: 8, profile_picture: "https://res.cloudinary.com/charlotte-smets/image/upload/v1637060480/jacqueline_hfxdpw.jpg")
Hen.create(name: "Victorine", description: "Victorine is a very classic Hen, nothing really important to say about this one. Lays very classic eggs, perfect for an omelette.", rating: 3.5, price_per_day: 25, breed: "Stupid Hen", eggs_per_day: 25, profile_picture: "https://res.cloudinary.com/charlotte-smets/image/upload/v1637144835/monika-kubala-DIjzFYrzHVw-unsplash_xoon6l.jpg")
puts "Hens created!"

puts "Creating Users..."
User.create(first_name: "Charlotte", last_name: "Smets", email: "charlotte@gmail.com", password: "123456")
User.create(first_name: "Mohammad", last_name: "Ewaz", email: "mohammad@gmail.com", password: "123456")
User.create(first_name: "Clement", last_name: "Azalbert", email: "clement@gmail.com", password: "123456")

puts 'Done!'
