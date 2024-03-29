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
seed_house = House.new(name: "seed house", address: "Meguro", haunted: 3, description: "Please make sure that your tetanus shots are up to date.", user_id: seedyboi.id, price: 500)
seed_photo = URI.open('http://coffeeguymike.com/abandonya/rustyStairs.jpg')
seed_house.photo.attach(io: seed_photo, filename: 'stairs.jpg', content_type: 'image/jpg')
seed_house.save
puts seed_house.name

puts 'attaching users to houses...'
mikes_house = House.new(name: 'the gabagool shack', address: '460 Brielle Ave, Staten Island, NY 10314', haunted: 4, description: "This was my great-grand-uncle's house back in the day. He's not actually related to me but used to get us cool stuff that fell off the back of a truck. He used to make the best gabagool in Bensonhurst until one day he had a crazy deli slicer accident in his home. For some reason I always hear him whispering whenever I stay there. Saying things like 'eh' and 'I'm walkin here.'" , user_id: mike.id, price: 440)
mikes_photo = URI.open('http://coffeeguymike.com/abandonya/kinugawaHouse.jpg')
mikes_house.photo.attach(io: mikes_photo, filename: 'kinu.jpg', content_type: 'image/jpg')
mikes_house.save!
puts mikes_house.name

maries_house = House.new(name: "hayataro's lair", address: '4400 Paralee Dr, Louisville, KY 40272', haunted: 2, description: "Beware of dog, protect your ankles. Check futon for dampness before lying down." , user_id: marie.id, price: 250 )
maries_photo = URI.open('http://coffeeguymike.com/abandonya/octodadDesat.jpg')
maries_house.photo.attach(io: maries_photo, filename: 'octo.jpg', content_type: 'image/jpg')
maries_house.save!
puts maries_house.name

hamishs_house = House.new(name: "floor mattress", address: 'Melbourne', haunted: 5, description: "Perfect bachelor pad.", user_id: hamish.id, price: 100)
hamishs_photo = URI.open('http://coffeeguymike.com/abandonya/stiltsWeirdCurve.jpg')
hamishs_house.photo.attach(io: hamishs_photo, filename: 'stilts.jpg', content_type: 'image/jpg')
hamishs_house.save!
puts hamishs_house.name

ellies_house = House.new(name: "Hyrule's castle", address: 'Quebec', haunted: 1, description: "Very spacious and quiet. You'll enjoy exploring all the unused rooms undisturbed. There's a big black cloud of angry miasma floating above it but it's cool don't worry too much about it. Also please bring a sword and at least one red potion (just a precaution...)", user_id: ellie.id, price: 750)
ellies_photo = URI.open('http://coffeeguymike.com/abandonya/noge.jpg')
ellies_house.photo.attach(io: ellies_photo, filename: 'noge.jpg', content_type: 'image/jpg')
ellies_house.save!
puts ellies_house.name

puts 'some new houses too...'

seedier_house = House.new(name: "Sadako's Well", address: "Shibuya", haunted: 3, description: "You remember Sadako right? She was a woman with long hair who was put in a well. She hasn't been looking so good since Ring 2 but you can totally hang out with her in her well", user_id: seedyboi.id, price: 666)
seedier_photo = URI.open('http://coffeeguymike.com/abandonya/snack.jpg')
seedier_house.photo.attach(io: seedier_photo, filename: 'snack.jpg', content_type: 'image/jpg')
seedier_house.save
puts seedier_house.name

seediest_house = House.new(name: "Katakuri's Inn", address: "Shibuya", haunted: 2, description: "Yes, okay, I know it was actually called the White Lover's Inn but that would be kinda weird to show up on a web page wouldn't it? Anyways the point is that you should go find a copy of The Happiness of the Katakuris and watch it now.", user_id: seedyboi.id, price: 840)
seediest_photo = URI.open('http://coffeeguymike.com/abandonya/motel.jpg')
seediest_house.photo.attach(io: seediest_photo, filename: 'motel.jpg', content_type: 'image/jpg')
seediest_house.save
puts seediest_house.name

mimas_room = House.new(name: "Mima's Room", address: 'Shimokitazawa', haunted: 1, description: "Which Mima's room is it you might ask, but that's the point. I guess there's not much in the way of ghosts unless you count the specter of working in a career based around being objectified and are slowly starting to lose your sense of self as a result.", user_id: hamish.id, price: 5)
mimas_photo = URI.open('http://coffeeguymike.com/abandonya/usaya.jpg')
mimas_room.photo.attach(io: mimas_photo, filename: 'usaya.jpg', content_type: 'image/jpg')
mimas_room.save
puts mimas_room.name

bunny_house = House.new(name: "Bunny House", address: 'Okunoshima', haunted: 4, description: "Lots of bunnies in the area, and very likely lots of bunny ghosts inside. This is where they used to test chemical weapons on bunnies so if a swarm of ghost bunnies is your idea of fun you better book now!", user_id: ellie.id, price: 800)
bunny_photo = URI.open('http://coffeeguymike.com/abandonya/lab.jpg')
bunny_house.photo.attach(io: bunny_photo, filename: 'lab.jpg', content_type: 'image/jpg')
bunny_house.save
puts bunny_house.name

yoshida = House.new(name: "Yoshida", address: 'Shibuya', haunted: 3, description: "Yoshida", user_id: marie.id, price: 250)
yoshida_photo = URI.open('http://coffeeguymike.com/abandonya/yoshida.jpg')
yoshida.photo.attach(io: yoshida_photo, filename: 'yoshida.jpg', content_type: 'image/jpg')
yoshida.save
puts yoshida.name

machiya = House.new(name: "Rusty Spooneria", address: "Ebisu", haunted: 4, description: "You're probably expecting some kind of Salad Fingers reference here or something right? Well I'd rather use the space to tell you about how Boards of Canada is really awesome and you should be listening to them.", user_id: mike.id, price: 550)
machiya_photo = URI.open('http://coffeeguymike.com/abandonya/machiya.jpg')
machiya.photo.attach(io: machiya_photo, filename: 'machiya.jpg', content_type: 'image/jpg')
machiya.save
puts machiya.name

negishi = House.new(name: "Himuro Mansion", address: "Kichijoji", haunted: 5, description: "It's pretty packed with ghosts here but they seem to be a bit camera shy. I think I heard something about an ancient ritual with the original owner's wife, or maybe it was twins?", user_id: mike.id, price: 600)
negishi_photo = URI.open('http://coffeeguymike.com/abandonya/negishi.jpg')
negishi.photo.attach(io: negishi_photo, filename: 'negishi.jpg', content_type: 'image/jpg')
negishi.save
puts negishi.name

puts 'all done!'
