class AddSlugToRounds < ActiveRecord::Migration
  def change
    add_column :rounds, :slug, :string
    add_index :rounds, :slug, unique: true
  end
end
