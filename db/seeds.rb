# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

5.times do
  name = Faker::Restaurant.name
  address = Faker::Address.street_address
  category = ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample
  phone_number = Faker::PhoneNumber.phone_number,
  # rating = rand(1..5)
  # content = Faker::Restaurant.review
  Restaurant.create(name: name, address: address, category: category)
  # Review.create(rating: rating, content: content)
  puts "Restaurant #{name} created"
end
puts 'All restaurants created'
