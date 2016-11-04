class Movie < ApplicationRecord

  belongs_to :user, optional: true
  validates_presence_of :title

  def checked_out?
    !self.user.nil?
  end
end
