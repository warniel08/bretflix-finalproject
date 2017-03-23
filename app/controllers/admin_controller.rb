class AdminController < ApplicationController

  before_filter :ensure_admin!

  def index
    @checked_out_movies = Movie.all.order(checkout_count: :desc).limit(5)  	
  end


  private

  def ensure_admin!
    unless current_user.is_admin?
      sign_out current_user
      redirect_to root_path
      return false
    end
  end

end
