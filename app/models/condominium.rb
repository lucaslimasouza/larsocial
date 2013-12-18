class Condominium < ActiveRecord::Base

	validates_presence_of :address, :number, :zip_code, :building,
		:designation_building

end
