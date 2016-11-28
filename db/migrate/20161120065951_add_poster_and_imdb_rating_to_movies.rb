class AddPosterAndImdbRatingToMovies < ActiveRecord::Migration[5.0]
  def change
  	add_column :movies, :poster, :text
  	add_column :movies, :imdbrating, :string
  end
end
