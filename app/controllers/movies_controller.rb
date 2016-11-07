class MoviesController < ApplicationController
  def index
    @movies = Movie.all.order(:title)
    @movies = Kaminari.paginate_array(@movies).page(params[:page]).per(10)
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def search
  	# selected = Movie.all where title contains params[:keyword]
  	# Add pagination?
		selected = Movie.where("title like ?", "%#{params[:keyword]}%")

		p ("Here are selected")
		p selected

    # if selected
      # render json: selected.ordered_json
    # else
    #   render :nothing => true, status: 404
    # end
  end
end
