require 'spec_helper'

describe Syndic do

  context "attributes" do 
  	it { should respond_to(:name) }
  	it { should respond_to(:phone) }
  	it { should respond_to(:cpf) }
  end

  context "validations" do
  	it { should validate_presence_of(:name) }
  	it { should validate_presence_of(:phone) }
  	it { should validate_presence_of(:cpf)}
  end

  context "associations" do
    it { should have_one(:condominium)}
  end
end
