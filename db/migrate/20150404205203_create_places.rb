class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :link
      t.string :address
      t.string :city
      t.string :state
      t.text :description

      t.timestamps null: false
    end
  end
end
