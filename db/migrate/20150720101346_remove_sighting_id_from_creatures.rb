class RemoveSightingIdFromCreatures < ActiveRecord::Migration
  def change
    remove_column :creatures, :sighting_id, :string
  end
end
