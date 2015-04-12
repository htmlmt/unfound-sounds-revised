class AddAlbumIdToHint < ActiveRecord::Migration
  def change
    add_column :hints, :album_id, :integer
  end
end
