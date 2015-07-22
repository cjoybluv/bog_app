class AddCreatureRefToSightings < ActiveRecord::Migration
  def change
    add_reference :sightings, :creature, index: true, foreign_key: true
  end
end
