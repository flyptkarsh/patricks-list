class AddSlugsToLists < ActiveRecord::Migration[5.1]
  def change
    add_column :lists, :slug, :string
    add_index :lists, :slug, unique: true
    add_column :places, :slug, :string
    add_index :places, :slug, unique: true
  end
end
