require 'spec_helper'

describe Dweller do
  
  context "atributes" do
    it { should respond_to(:name) }
    it { should respond_to(:phone) }
  end

  context "validates presencce" do
  	it { should validate_presence_of(:name) }
  	it { should validate_presence_of(:phone) }
  end

  context 'association' do
  	it { should have_one(:apartment) }
  	
  end

end
