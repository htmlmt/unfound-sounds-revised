class AddLinkTextToPlace < ActiveRecord::Migration
  def change
    add_column :places, :link_text, :string
  end
end
