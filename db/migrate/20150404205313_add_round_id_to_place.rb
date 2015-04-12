class AddRoundIdToPlace < ActiveRecord::Migration
  def change
    add_column :places, :round_id, :integer
  end
end
