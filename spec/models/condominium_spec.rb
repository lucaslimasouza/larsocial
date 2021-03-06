require 'spec_helper'

describe Condominium do

context "methods" do
	it { should respond_to(:address) }
	it { should respond_to(:number) }
	it { should respond_to(:zip_code) }
	it { should respond_to(:building) }
	it { should respond_to(:designation_building) }
	it { should respond_to(:name) }
end

context "validations presence " do
	it { should validate_presence_of(:address) }
	it { should validate_presence_of(:number) }
	it { should validate_presence_of(:zip_code) }
	it { should validate_presence_of(:building) }
	it { should validate_presence_of(:designation_building) }
	it { should validate_presence_of(:name) }
end

context 'validations numericality ' do
	it { should validate_numericality_of(:zip_code) }
	it { should validate_numericality_of(:number) }
	it { should validate_numericality_of(:building).is_less_than(400) }
end

context "association" do
	it { should belong_to(:syndic) }
	it { should have_many(:apartment) }
end

context "generate key" do
	it "should generate a key it size 4" do
		condominium = build(:condominium)
		condominium.build_key.size.should == 4 
	end
end

context "create" do
	it { should callback(:build_key).before(:save) }
end

context 'search' do
	it "get some key and return a Condominium" do
		condominium = create(:condominium)
		key = condominium.key

		Condominium.search(key).first.key.should == key
	end
end

end
