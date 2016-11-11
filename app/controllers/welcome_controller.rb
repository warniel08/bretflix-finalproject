class WelcomeController < ApplicationController
  def index
  	@movies = Movie.all.order(checkout_count: :desc).limit(5)  	
  end
end

