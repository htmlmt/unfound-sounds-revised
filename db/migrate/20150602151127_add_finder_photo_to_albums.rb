class AddFinderPhotoToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :finder_photo, :string
  end
end
