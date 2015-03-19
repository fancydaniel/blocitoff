# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

# Create User
  user = User.create!(
    name: Faker::Name.name, 
    email: "person@example.com",
    password:    "hamburger" 
    )
  user.skip_confirmation!
  user.save!


# Create Lists
  list = List.create!(
    user: user,
    title: Faker::Lorem.sentence)


# Create Items for List
5.times do
  Item.create!(
    list: list,
    name: Faker::Lorem.sentence)
end

puts "Seed finished"
puts "#{User.count} user created"
puts "#{List.count} list created"
puts "#{Item.count} items created"