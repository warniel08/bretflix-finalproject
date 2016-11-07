class MoviesController < ApplicationController
  def index
    @movies = Movie.all.order(:title)
    @movies = Kaminari.paginate_array(@movies).page(params[:page]).per(10)
  end

  def search
    @movies = Movie.where("title like ?", "%#{params[:keyword]}%").order(:title)
    @movies = Kaminari.paginate_array(@movies).page(params[:page]).per(10)

    if @movies.empty?
      render body: nil, status: 404
    else
      render json: @movies
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end
end
