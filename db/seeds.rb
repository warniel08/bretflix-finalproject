require 'csv'
filename = 'db/Collection.csv'
users = []

10.times do
  users << User.create!({:first_name => Faker::Name.first_name, :last_name => Faker::Name.last_name, :email => Faker::Internet.email, :encrypted_password => "warner"})
end


Movie.generate_movie_data(filename)

