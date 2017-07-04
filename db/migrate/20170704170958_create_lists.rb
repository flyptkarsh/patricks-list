class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.string :heading
      t.string :sub_heading
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
