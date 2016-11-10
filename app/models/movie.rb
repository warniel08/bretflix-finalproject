class Movie < ApplicationRecord

  belongs_to :user, optional: true
  validates_presence_of :title

  def checked_out?
    !self.user.nil?
  end

  def self.generate_movie_data(filename)
    title_data = []
    year_data = []
    tt_data = []
    CSV.foreach(filename) do |row|
      title_data << row[2]
      year_data << row[5]
      tt_data << row[6]
    end

    i = 0
    while i < title_data.length do
      Movie.find_or_create_by(title: title_data[i], year: year_data[i], description: tt_data[i], checkout_count: 0)
      i +=1
    end
  end
end
