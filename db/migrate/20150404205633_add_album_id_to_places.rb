class AddAlbumIdToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :album_id, :integer
  end
end
