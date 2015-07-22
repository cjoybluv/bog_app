class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :description
      t.string :gps_coordinates

      t.timestamps null: false
    end
  end
end
