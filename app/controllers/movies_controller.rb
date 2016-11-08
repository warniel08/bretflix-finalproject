class MoviesController < ApplicationController
  def index
    @movies = Movie.all.order(:title)
    @movies = Kaminari.paginate_array(@movies).page(params[:page]).per(10)
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.user = current_user
    @movie.checkout_count +=1
    @movie.due_date = get_due_date
    @movie.save!
  end

  private

  def get_due_date
    Date.today + 7
  end
end
