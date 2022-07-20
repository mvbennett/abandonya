  # This file should contain all the record creation needed to seed the database with its default values.
  # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
  #
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

# kill the past, yay!
Booking.destroy_all
House.destroy_all
User.destroy_all

# users!
seedyboi = User.new(username: 'seedy seed boy', email: 'seed@seedy.com', password: '123456')
seedyboi.save
mike = User.new(username: 'mikeysnakes', email: 'mike@gmail.com', password: '123456')
mike.save!
marie = User.new(username: 'hayataroMama', email: 'marie@gmail.com', password: '123456')
marie.save!
hamish = User.new(username: 'youGuysNeverDidMDMA?', email: 'hamish@gmail.com', password: '123456')
hamish.save!
ellie = User.new(username: 'poutineLuvr', email: 'ellie@gmail.com', password: '123456')
ellie.save!

# houses, and photo attachments
seed_house = House.new(name: "seed house", address: "123 seedy st", haunted: 3, user_id: seedyboi.id)
seed_photo = URI.open('http://coffeeguymike.com/abandonya/rustyStairs.jpg')
seed_house.photo.attach(io: seed_photo, filename: 'stairs.jpg', content_type: 'image/jpg')
seed_house.save

mikes_house = House.new(name: 'mikeyz gabagool shack', address: '665 guido street', haunted: 4, user_id: mike.id)
mikes_photo = URI.open('http://coffeeguymike.com/abandonya/kinugawaHouse.jpg')
mikes_house.photo.attach(io: mikes_photo, filename: 'kinu.jpg', content_type: 'image/jpg')
mikes_house.save!

maries_house = House.new(name: "hayataro's lair", address: '69 bourbon way', haunted: 2, user_id: marie.id)
maries_photo = URI.open('http://coffeeguymike.com/abandonya/octodadDesat.jpg')
maries_house.photo.attach(io: maries_photo, filename: 'octo.jpg', content_type: 'image/jpg')
maries_house.save!

hamishs_house = House.new(name: "one mattress on the floor", address: '420 straya mate', haunted: 5, user_id: hamish.id)
hamishs_photo = URI.open('http://coffeeguymike.com/abandonya/stiltsWeirdCurve.jpg')
hamishs_house.photo.attach(io: hamishs_photo, filename: 'stilts.jpg', content_type: 'image/jpg')
hamishs_house.save!

ellies_house = House.new(name: "Ganon's castle", address: '69 rue effrayante', haunted: 1, user_id: ellie.id)
ellies_photo = URI.open('http://coffeeguymike.com/abandonya/noge.jpg')
ellies_house.photo.attach(io: ellies_photo, filename: 'noge.jpg', content_type: 'image/jpg')
ellies_house.save!
