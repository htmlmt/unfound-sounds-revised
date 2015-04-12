class CreateHints < ActiveRecord::Migration
  def change
    create_table :hints do |t|
      t.string :name
      t.string :photo
      t.text :description
      t.string :thumbnail

      t.timestamps null: false
    end
  end
end
