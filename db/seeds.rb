require 'csv'
filename = 'db/Collection.csv'
users = []

# Generate admin
User.create!({:first_name => 'Bret', :last_name => 'Bassett', :email => ENV["GMAIL_USERNAME"], :password => ENV["ADMIN_PASSWORD"]})

3.times do
  users << User.create!({:first_name => Faker::Name.first_name, :last_name => Faker::Name.last_name, :email => Faker::Internet.email, :password => "warner"})
end

users << User.create!({:first_name => "Mary", :last_name => "Jones", :email => "mary@mary.com", :password => "marymary"})


Movie.generate_movie_data(filename)

