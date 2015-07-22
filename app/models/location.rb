class Location < ActiveRecord::Base

  has_many :sightings
  has_many :creatures, :through => :sightings
  has_many :users, :through => :sightings

end
