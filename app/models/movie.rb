class Movie < ApplicationRecord

  belongs_to :users
  validates_presence_of :title, :checked_out
end
