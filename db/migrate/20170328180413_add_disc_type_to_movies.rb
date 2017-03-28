class AddDiscTypeToMovies < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :disc_type, :text
  end
end
