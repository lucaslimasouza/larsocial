require 'spec_helper'

describe Syndic do
  context "attributes" do 
  	it { should respond_to(:name) }
  	it { should respond_to(:phone) }
  	it { should respond_to(:cpf) }
  end
end
