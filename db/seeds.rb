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


pierre = User.create(email: 'pierre@gmail.com', password: '12345678')

sarah = User.create(email: 'sarah@gmail.com', password: '12345678')

nicolas = User.create(email: 'nicolas@gmail.com', password: '12345678')

louis = User.create(email: 'louis@gmail.com', password: '12345678')

juliette = User.create(email: 'juliette@gmail.com', password: '12345678')

puts "user seed"

Teacher.create(feature: '', price: '30', picture: '', user: pierre)

Teacher.create(feature: '', price: '40', picture: '', user: sarah)

Teacher.create(feature: '', price: '60', picture: '', user: nicolas)

Teacher.create(feature: '', price: '70', picture: '', user: louis)

Teacher.create(feature: '', price: '100', picture: '', user: juliette)

puts "teacher seed"
