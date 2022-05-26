# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ email: "Star Wars" }, { email: "Lord of the Rings" }])
#   Character.create(email: "Luke", movie: movies.first)
require 'open-uri'
require 'json'

puts "Start seed"

Teacher.destroy_all
User.destroy_all
Booking.destroy_all

file = URI.open("https://pixabay.com/photos/search/man%20woman/")

pierre = User.new(email: 'pierre@gmail.com', password: '12345678', first_name: "pierre", last_name: "jean")
pierre.photo.attach(io: file, filename: "pierre.png", content_type: "image/png")
pierre.save

sarah = User.new(email: 'sarah@gmail.com', password: '12345678', first_name: "sarah", last_name: "du desert")
sarah.photo.attach(io: file, filename: "sarah.png", content_type: "image/png")
sarah.save

nicolas = User.new(email: 'nicolas@gmail.com', password: '12345678', first_name: "nicolas", last_name: "petit")
nicolas.photo.attach(io: file, filename: "nicolas.png", content_type: "image/png")
nicolas.save

louis = User.new(email: 'louis@gmail.com', password: '12345678', first_name: "louis", last_name: "lafonte")
louis.photo.attach(io: file, filename: "louis.png", content_type: "image/png")
louis.save

juliette = User.new(email: 'juliette@gmail.com', password: '12345678', first_name: "juliette", last_name: "Jetaime")
juliette.photo.attach(io: file, filename: "juliette.png", content_type: "image/png")
juliette.save

puts "user seed"

piere = Teacher.create(feature: '', price: '30', picture: 'https://media.istockphoto.com/photos/portrait-of-mature-businessman-picture-id1327603929?k=20&m=1327603929&s=612x612&w=0&h=UgF0xUZXJbNVshou9Jpt_bKtQRIa9IyXEkxlAIZxyK8=', user: pierre)

sara = Teacher.create(feature: '', price: '40', picture: 'https://media.istockphoto.com/photos/young-african-woman-smiling-at-sunset-picture-id969233490?k=20&m=969233490&s=612x612&w=0&h=jXLgjbu0CIWEohHgcx_ZHBhrcH3hNKcg7TVJgehndPg=', user: sarah)

nico = Teacher.create(feature: '', price: '60', picture: 'https://media.istockphoto.com/photos/smiling-man-with-arms-crossed-wearing-eyeglasses-picture-id1284027512?k=20&m=1284027512&s=612x612&w=0&h=gJFKUHjcUwv-WHAl6zLHmbfsJmJTLp5p1KqFBqSsO3w=', user: nicolas)

Teacher.create(feature: '', price: '70', picture: 'https://media.istockphoto.com/photos/damn-right-i-approve-picture-id1139070467?k=20&m=1139070467&s=612x612&w=0&h=uYQ3Xxsq_cqiLELXnmfTTME4ghXwsfsGXTjtb9UyOyo=', user: louis)

Teacher.create(feature: '', price: '100', picture: 'https://media.istockphoto.com/photos/portrait-of-young-smiling-woman-face-partially-covered-with-flying-picture-id1297159365?k=20&m=1297159365&s=612x612&w=0&h=RHC5Qy40yAgwmpZVj0vXKUzcUm6qrY2MSSWzj2nLQlg=', user: juliette)

Booking.create(date: '25 mai', user_id: pierre.id, teacher_id: piere.id )
Booking.create(date: '25 mai', user_id: sarah.id, teacher_id: sara.id )
Booking.create(date: '25 mai', user_id: nicolas.id, teacher_id: nico.id )

puts "teacher seed"
