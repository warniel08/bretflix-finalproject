class WelcomeController < ApplicationController
  def index
  	@checked_out_movies = Movie.all.order(checkout_count: :desc).limit(5)  	
  end
end
