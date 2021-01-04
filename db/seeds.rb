# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Baby.destroy_all
User.destroy_all

Baby.create(name: "Magic the Dragon", release_year: 1995, poem: "Magic the dragon lives in a dream
The most beautiful that you have ever seen
Through magic lands she likes to fly
Look up and watch her, way up high!", img_url: "https://beaniepedia.com/beanies/files/2020/01/magic.jpg", species: "Dragon", msrp: 7)

Baby.create(name: "Humphrey the Camel", release_year: 1995, poem: "Humphrey is made from tan-brown coloured material and has black button eyes and black stitching for his nostrils. His back forms into one hump and he has dangly legs and a tiny tail.", img_url: "https://beaniepedia.com/beanies/files/2019/01/humphrey.jpg", species: "Camel", msrp: 6)


10.times do 
User.create(name:Faker::Name.name, age: rand(30),location: Faker::Address.city, user_name: Faker::TvShows::HeyArnold.character, password: "abc123")
end

puts "Seeding Complete"