class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :name
      t.string :address
      t.string :heading
      t.string :description
      t.decimal :latitude, {:precision=>10, :scale=>6}
      t.decimal :longitude, {:precision=>10, :scale=>6}
      t.references :list, foreign_key: true

      t.timestamps
    end
  end
end
