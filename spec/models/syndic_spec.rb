require 'spec_helper'

describe Syndic do

  context "attributes" do 
  	it { should respond_to(:name) }
  	it { should respond_to(:phone) }
  	it { should respond_to(:cpf) }
  end

  context "validations presence" do
  	it { should validate_presence_of(:name) }
  	it { should validate_presence_of(:phone) }
  	it { should validate_presence_of(:cpf) }
  end 

  context "validations numericality " do
    it { should validate_numericality_of(:phone) }
    it { should validate_numericality_of(:cpf).is_equal_to(11) }
  end

  context "associations" do
    it { should have_one(:condominium) }
  end

  context "nested attributes" do
    it { should accept_nested_attributes_for(:condominium).allow_destroy(true) }
  end 
end
