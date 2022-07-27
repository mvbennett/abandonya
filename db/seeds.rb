  # This file should contain all the record creation needed to seed the database with its default values.
  # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
  #
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

puts 'kill the past...'
# kill the past, yay!
Booking.destroy_all
House.destroy_all
User.destroy_all

puts "get those users..."
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

puts 'makin houses...'
# houses, and photo attachments
seed_house = House.new(name: "seed house", address: "123 seedy st", haunted: 3, description: "Please make sure that your tetanus shots are up to date.", user_id: seedyboi.id)
seed_photo = URI.open('http://coffeeguymike.com/abandonya/rustyStairs.jpg')
seed_house.photo.attach(io: seed_photo, filename: 'stairs.jpg', content_type: 'image/jpg')
seed_house.save

puts 'attaching users to houses...'
mikes_house = House.new(name: 'mikeyz gabagool shack', address: '460 Brielle Ave, Staten Island, NY 10314', haunted: 4, description: "This was my great-grand-uncle's house back in the day. He's not actually related to me but used to get us cool stuff that fell off the back of a truck. He used to make the best gabagool in Bensonhurst until one day he had a crazy deli slicer accident in his home. For some reason I always hear him whispering whenever I stay there. Saying things like 'eh' and 'I'm walkin here.'" , user_id: mike.id)
mikes_photo = URI.open('http://coffeeguymike.com/abandonya/kinugawaHouse.jpg')
mikes_house.photo.attach(io: mikes_photo, filename: 'kinu.jpg', content_type: 'image/jpg')
mikes_house.save!

maries_house = House.new(name: "hayataro's lair", address: '69 bourbon way', haunted: 2, description: "Beware of dog, protect your ankles. Check futon for dampness before lying down." , user_id: marie.id)
maries_photo = URI.open('http://coffeeguymike.com/abandonya/octodadDesat.jpg')
maries_house.photo.attach(io: maries_photo, filename: 'octo.jpg', content_type: 'image/jpg')
maries_house.save!

hamishs_house = House.new(name: "floor mattress", address: '420 straya mate', haunted: 5, description: "Perfect bachelor pad.", user_id: hamish.id)
hamishs_photo = URI.open('http://coffeeguymike.com/abandonya/stiltsWeirdCurve.jpg')
hamishs_house.photo.attach(io: hamishs_photo, filename: 'stilts.jpg', content_type: 'image/jpg')
hamishs_house.save!

ellies_house = House.new(name: "Hyrule's castle", address: '900 rue effrayante', haunted: 1, description: "Very spacious and quiet. You'll enjoy exploring all the unused rooms undisturbed. There's a big black cloud of angry miasma floating above it but it's cool don't worry too much about it. Also please bring a sword and at least one red potion (just a precaution...)
", user_id: ellie.id)
ellies_photo = URI.open('http://coffeeguymike.com/abandonya/noge.jpg')
ellies_house.photo.attach(io: ellies_photo, filename: 'noge.jpg', content_type: 'image/jpg')
ellies_house.save!

puts 'all done!'
