class AddRoundIdToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :round_id, :integer
  end
end
