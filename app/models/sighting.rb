class Sighting < ActiveRecord::Base

  belongs_to :creature
  belongs_to :location
  belongs_to :user

  def creature_name
    return @Creature.find(sighting[:creature_id]).name
  end

end
