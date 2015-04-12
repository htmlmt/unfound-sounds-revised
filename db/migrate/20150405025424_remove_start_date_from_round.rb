class RemoveStartDateFromRound < ActiveRecord::Migration
  def change
    remove_column :rounds, :start_date, :datetime
  end
end
