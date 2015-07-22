class RemoveCreatureIdFromSightings < ActiveRecord::Migration
  def change
    remove_column :sightings, :creature_id, :string
  end
end
