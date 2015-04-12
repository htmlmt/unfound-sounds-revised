class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.integer :place_id
      t.string :name
      t.string :description
      t.string :photo
      t.string :thumbnail

      t.timestamps null: false
    end
  end
end
