require 'open-uri'
require 'json'

puts "Start seed"
puts "User seed start..."

Booking.destroy_all
Teacher.destroy_all
User.destroy_all
Booking.destroy_all

pierre = User.create(email: 'pierre@gmail.com', password: '12345678', first_name: "pierre", last_name: "jean", city: "Rennes")

sarah = User.create(email: 'sarah@gmail.com', password: '12345678', first_name: "sarah", last_name: "du desert", city: "Paris")

nicolas = User.create(email: 'nicolas@gmail.com', password: '12345678', first_name: "nicolas", last_name: "petit", city: "Bordeaux")

louis = User.create(email: 'louis@gmail.com', password: '12345678', first_name: "louis", last_name: "lafonte", city: "Paris")

juliette = User.create(email: 'juliette@gmail.com', password: '12345678', first_name: "juliette", last_name: "Jetaime", city: "Lille")

puts "user seed finish !"


puts "Teacher seed start..."

piere = Teacher.new(feature: 'Red wine specialist with demonstrated skills on Bugundy wines. Also expert in cider due to my roots.', price: '30', picture: '', user: pierre)
piere.photo.attach(io: file, filename: "pierre.png", content_type: "image/png")
piere.save

sara = Teacher.new(feature: 'White wine from France. Fond of vins du Languedoc. Can also provide advise on rhums', user: sarah)
sara.photo.attach(io: file, filename: "sarah.png", content_type: "image/png")
sara.save

nico = Teacher.new(feature: 'White wine from France. Fond of vins du Languedoc. Can also provide advise on rhums', price: '60', picture: '', user: nicolas)
nico.photo.attach(io: file, filename: "nicolas.png", content_type: "image/png")
nico.save

lui = Teacher.new(feature: 'Red wine specialist with demonstrated skills on Bugundy wines. Also expert in cider due to my roots', user: louis)
loui.photo.attach(io: file, filename: "louis.png", content_type: "image/png")
loui.save

julie = Teacher.new(feature: 'White wine from France. Fond of vins du Languedoc. Can also provide advise on rhums', user: juliette)
julie.photo.attach(io: file, filename: "julie.png", content_type: "image/png")
julie.save

puts "teacher seed finish !"

puts "Booking seed start..."

Booking.create(date: '25 mai', user_id: pierre.id, teacher_id: piere.id )
Booking.create(date: '25 mai', user_id: sarah.id, teacher_id: sara.id )
Booking.create(date: '25 mai', user_id: nicolas.id, teac<<<<<<< seedher_id: nico.id )

puts "Booking seed finish !"

