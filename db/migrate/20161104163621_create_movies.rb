class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.string :description
      t.boolean :checked_out
      t.integer :checkout_count
      t.date :due_date
      t.integer :user_id, foreign_key: true
      t.integer :condition
    end
  end
end
