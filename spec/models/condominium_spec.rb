require 'spec_helper'

describe Condominium do

	context "methods" do
		it { should respond_to(:address) }
		it { should respond_to(:number) }
		it { should respond_to(:zip_code) }
		it { should respond_to(:building) }
		it { should respond_to(:designation_building) }
	end

	context "validations" do
		it { should validate_presence_of(:address) }
		it { should validate_presence_of(:number) }
		it { should validate_presence_of(:zip_code) }
		it { should validate_presence_of(:building) }
		it { should validate_presence_of(:designation_building) }
	end
end
