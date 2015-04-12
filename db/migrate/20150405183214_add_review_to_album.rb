class AddReviewToAlbum < ActiveRecord::Migration
  def change
    add_column :albums, :review, :string
  end
end
