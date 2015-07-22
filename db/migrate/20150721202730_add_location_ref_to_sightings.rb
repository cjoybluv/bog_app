class AddLocationRefToSightings < ActiveRecord::Migration
  def change
    add_reference :sightings, :location, index: true, foreign_key: true
  end

end
