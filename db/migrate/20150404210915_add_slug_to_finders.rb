class AddSlugToFinders < ActiveRecord::Migration
  def change
    add_column :finders, :slug, :string
    add_index :finders, :slug, unique: true
  end
end
