class Condominium < ActiveRecord::Base

	validates_presence_of :address, :number, :zip_code, :building,
		:designation_building, :name

	validates_numericality_of :zip_code, :number
	validates_numericality_of :building, less_than: 400

		belongs_to :syndic
		has_many :apartment

		before_save :build_key

		def build_key
			self.key ||= SecureRandom.hex(2)
		end
end
