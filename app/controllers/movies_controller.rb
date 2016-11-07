class MoviesController < ApplicationController
  def index
    @movies = Movie.all.order(:title)
    @movies = Kaminari.paginate_array(@movies).page(params[:page]).per(10)
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def search
  	p params
		# hashtag = Hashtag.where(name: params[:keyword]).first
  #   if hashtag
  #     render json: hashtag.tweets.ordered_json
  #   else
  #     render :nothing => true, status: 404
  #   end
  end
end
