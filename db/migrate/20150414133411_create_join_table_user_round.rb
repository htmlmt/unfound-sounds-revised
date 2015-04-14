class CreateJoinTableUserRound < ActiveRecord::Migration
  def change
    create_join_table :users, :rounds do |t|
      # t.index [:user_id, :round_id]
      # t.index [:round_id, :user_id]
    end
  end
end
