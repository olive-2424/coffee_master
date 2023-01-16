# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
user = User.create!(name: 'endo_mikiya',
                    email: 'mikiya@gmail.com',
                    password: 'foobar',
                    password_confirmation: 'foobar')

10.times do |n|
  User.create(
    name: Faker::Name.name,
    email: Faker::Games::Pokemon.name + "#{n + 1}@email.com",
    password: 'password',
    password_confirmation: 'password'
  )
end

100.times do
  Been.create(
    user: User.offset(rand(User.count)).first,
    country_name: Faker::Games::Pokemon.name,
    farm_name: Faker::Games::Pokemon.name,
    description: Faker::Games::Pokemon.name
  )
end