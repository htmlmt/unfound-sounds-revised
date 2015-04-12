class CreateFinders < ActiveRecord::Migration
  def change
    create_table :finders do |t|
      t.string :name
      t.string :photo
      t.integer :album_id

      t.timestamps null: false
    end
  end
end
