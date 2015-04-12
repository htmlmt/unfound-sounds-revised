class AddTeaserToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :teaser, :string
  end
end
