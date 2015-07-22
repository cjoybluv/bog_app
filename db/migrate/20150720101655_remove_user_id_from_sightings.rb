class RemoveUserIdFromSightings < ActiveRecord::Migration
  def change
    remove_column :sightings, :user_id, :string
  end
end
