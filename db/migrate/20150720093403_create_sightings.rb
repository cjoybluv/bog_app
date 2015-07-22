class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.string :creature_id
      t.string :location_id
      t.string :user_id
      t.string :description

      t.timestamps null: false
    end
  end
end
