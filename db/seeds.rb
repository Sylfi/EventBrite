# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

30.times do

user = User.create!(email: Faker::Internet.email, description: Faker::Hacker.say_something_smart,
first_name: Faker::FunnyName.name, last_name: Faker::Superhero.suffix)

event = Event.create!(start_date: Faker::Date.forward(days: 120), duration: Faker::Number.between(from: 5, to: 1000),
title: Faker::Books::CultureSeries.culture_ship, description: Faker::Quote.matz, price: Faker::Number.between(from: 1, to:100),
location: Faker::Address.country_by_code(code: 'FR'), administrator: Faker::Number.between(from: 1, to: 10))



