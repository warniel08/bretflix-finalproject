class User < ApplicationRecord

  has_many :movies
  validates_presence_of :first_name, :last_name, :password, :email

end
