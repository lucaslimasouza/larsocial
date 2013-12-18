require 'spec_helper'

describe Condominium do

	context "methods" do
		it { should respond_to(:address) }
		it { should respond_to(:number) }
	end
end
