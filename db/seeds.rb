# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(username: 'seedy seed boy', email: 'seed@seedy.com', password: '123456')

# make sure to check which user ids you have available in console
House.create!(name: "seed house", address: "123 seedy st", haunted: 6, user_id: 1)
