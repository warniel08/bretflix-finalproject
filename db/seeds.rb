# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do
  User.create([{:first_name => Faker::Name.first_name, :last_name => Faker::Name.last_name, :email => Faker::Internet.email, :password => Faker::Internet.password}])
end

10.times do
  Movie.create([{:title => Faker::Book.title, :checked_out => true, year: 2016, description: "Awesome", checkout_count: 4, due_date: Faker::Date.forward(2), condition: 2}])
end
