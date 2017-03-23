class MoviesController < ApplicationController

  def index
    @movies = Movie.all
    @movies = Kaminari.paginate_array(@movies).page(params[:page]).per(14)
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def checked_out
    @checked_out = Movie.includes(:user).where("user_id != 0").order("users.last_name")
    render :checked_out_list
  end

  def search
    @keyword = params[:movie][:keyword]
    @movies = Movie.where("title ILIKE ?", "%#{@keyword}%").order(:title)
    @movies = Kaminari.paginate_array(@movies).page(params[:page]).per(10)

    if @movies.empty?
      render :no_matches
    else
      render :keyword_search
    end
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.user
      check_in
      render :checkin
    else
      @movie.user = current_user
      check_out
      render :checkout
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy!
    redirect_to admin_index_path
  end

  def check_in
    @movie.due_date = nil
    @movie.user = nil
    @movie.save!
  end

  def check_out
    @movie.checkout_count +=1
    @movie.due_date = get_due_date
    @movie.save!
  end

  def get_due_date
    Date.today + 7
  end

end
