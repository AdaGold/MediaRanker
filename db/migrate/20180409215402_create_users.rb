class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.date :join_date

      t.timestamps
    end
  end
end
