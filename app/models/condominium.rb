class Condominium < ActiveRecord::Base

	validates_presence_of :address, :number, :zip_code, :building,
		:designation_building

		belongs_to :syndic

		before_save :build_key

		def build_key
			self.key = SecureRandom.hex(2)
		end
end
