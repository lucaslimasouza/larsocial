class Apartment < ActiveRecord::Base

	validates_presence_of :designation_building, :number
	belongs_to :dweller

end
