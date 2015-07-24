class Sighting < ActiveRecord::Base

  belongs_to :creature
  belongs_to :location
  belongs_to :user


end
