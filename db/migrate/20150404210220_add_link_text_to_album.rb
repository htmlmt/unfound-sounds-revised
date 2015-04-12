class AddLinkTextToAlbum < ActiveRecord::Migration
  def change
    add_column :albums, :link_text, :string
  end
end
