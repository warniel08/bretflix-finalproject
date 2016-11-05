class MoviesController < ApplicationController
  def index
    @movies = Movie.order(:title).page params[:page]
  end

  def show
    @movie = Movie.find(params[:id])
  end
end
