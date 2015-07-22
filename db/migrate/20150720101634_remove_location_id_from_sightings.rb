class RemoveLocationIdFromSightings < ActiveRecord::Migration
  def change
    remove_column :sightings, :location_id, :string
  end
end
