class CreateFinds < ActiveRecord::Migration
  def change
    create_table :finds do |t|
      t.string :album_id
      t.string :user_id
      t.string :photo

      t.timestamps null: false
    end
  end
end
