class MoviesController < ApplicationController
  def index
    @movies = Movie.all.order(:title)
    @movies = Kaminari.paginate_array(@movies).page(params[:page]).per(10)
  end

  def show
    @movie = Movie.find(params[:id])
  end

end
