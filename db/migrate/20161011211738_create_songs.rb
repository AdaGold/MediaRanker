class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.string :auteur
      t.text :description
      t.integer :score

      t.timestamps null: false
    end
  end
end
