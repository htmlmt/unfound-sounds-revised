class AddLinkToAlbum < ActiveRecord::Migration
  def change
    add_column :albums, :link, :string
  end
end
