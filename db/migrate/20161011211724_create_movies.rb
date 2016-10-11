class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.string :auteur
      t.text :description
      t.integer :score

      t.timestamps null: false
    end
  end
end
