# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ email: "Star Wars" }, { email: "Lord of the Rings" }])
#   Character.create(email: "Luke", movie: movies.first)
require 'open-uri'
require 'json'

User.create(email: 'pierre@gmail.com', password: '1234')

User.create(email: 'sarah@gmail.com', password: '1234')

User.create(email: 'nicolas@gmail.com', password: '1234')

User.create(email: 'louis@gmail.com', password: '1234')

User.create(email: 'juliette@gmail.com', password: '1234')

Teacher.create(feature: '', price: '30', picture: '')

Teacher.create(feature: '', price: '40', picture: '')

Teacher.create(feature: '', price: '60', picture: '')

Teacher.create(feature: '', price: '70', picture: '')

Teacher.create(feature: '', price: '100', picture: '')
