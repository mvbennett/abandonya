  # This file should contain all the record creation needed to seed the database with its default values.
  # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
  #
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
House.destroy_all
Booking.destroy_all

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

# make sure to check which user ids you have available in console
House.create!(name: "seed house", address: "123 seedy st", haunted: 3, user_id: seedyboi.id)
House.create!(name: 'mikeyz gabagool shack', address: '665 guido street', haunted: 4, user_id: mike.id)
House.create!(name: "hayataro's lair", address: '69 bourbon way', haunted: 2, user_id: marie.id)
House.create!(name: "hamish's apartment with like one mattress on the floor", address: '455 straya mate', haunted: 5, user_id: hamish.id)
House.create!(name: "Gannon's castle", address: '69 rue de effrayante', haunted: 1, user_id: ellie.id)
