class AddMonthToRounds < ActiveRecord::Migration
  def change
    add_column :rounds, :month, :date
  end
end
