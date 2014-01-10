require 'spec_helper'

describe Apartment do
  
  context "atributes" do
    it { should respond_to(:designation_building) }
    it { should respond_to(:number) }
  end

  context 'validate presence' do
  	it { should validate_presence_of(:designation_building) }
  	it { should validate_presence_of(:number) }
  end

  context 'association' do
  	it { should belong_to(:dweller) }
  end
end
