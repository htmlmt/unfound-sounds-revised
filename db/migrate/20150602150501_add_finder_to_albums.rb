class AddFinderToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :finder, :string
  end
end
