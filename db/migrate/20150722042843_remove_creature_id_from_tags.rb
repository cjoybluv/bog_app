class RemoveCreatureIdFromTags < ActiveRecord::Migration
  def change
        remove_column :tags, :creature_id, :string

  end
end
