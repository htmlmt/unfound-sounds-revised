class AddSlugToHints < ActiveRecord::Migration
  def change
    add_column :hints, :slug, :string
    add_index :hints, :slug, unique: true
  end
end
