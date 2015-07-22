class Creature < ActiveRecord::Base

  has_many :sightings
  has_many :locations, :through => :sightings
  has_many :users, :through => :sightings
  has_and_belongs_to_many :tags

end
