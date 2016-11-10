require 'csv'
filename = 'db/Collection.csv'
users = []

# Generate admin
User.create!({:first_name => 'Bret', :last_name => 'Bassett', :email => ENV["GMAIL_USERNAME"], :password => ENV["ADMIN_PASSWORD"]})

10.times do
  users << User.create!({:first_name => Faker::Name.first_name, :last_name => Faker::Name.last_name, :email => Faker::Internet.email, :password => "warner"})
end


Movie.generate_movie_data(filename)

