class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.string :band
      t.string :cover
      t.string :rdio_link
      t.boolean :found

      t.timestamps null: false
    end
  end
end
