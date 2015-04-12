class RemoveRoundIdFromPlace < ActiveRecord::Migration
  def change
    remove_column :places, :round_id, :integer
  end
end
