class AddSightingRefToCreatures < ActiveRecord::Migration
  def change
    add_reference :creatures, :sighting, index: true, foreign_key: true
  end
end
