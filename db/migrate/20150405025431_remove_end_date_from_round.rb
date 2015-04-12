class RemoveEndDateFromRound < ActiveRecord::Migration
  def change
    remove_column :rounds, :end_date, :datetime
  end
end
