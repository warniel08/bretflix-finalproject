users = []

10.times do
  users << User.create!({:first_name => Faker::Name.first_name, :last_name => Faker::Name.last_name, :email => Faker::Internet.email, :password => Faker::Internet.password})
end

10.times do
  Movie.create!({:title => Faker::Book.title, year: 2016, description: "Awesome", checkout_count: 4, due_date: Faker::Date.forward(2), condition: 2})
end

10.times do
  Movie.create!({:title => Faker::Book.title, year: 2016, description: "Awesome", checkout_count: 4, due_date: Faker::Date.forward(2), condition: 2, user: users.first })
end
