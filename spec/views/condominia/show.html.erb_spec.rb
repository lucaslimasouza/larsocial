require 'spec_helper'

describe "condominia/show" do
  before(:each) do
    @condominium = assign(:condominium, stub_model(Condominium,
      :address => "Address",
      :number => "Number",
      :zip_code => "Zip Code",
      :building => 1,
      :designation_building => "Designation Building"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Number/)
    expect(rendered).to match(/Zip Code/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Designation Building/)
  end
end
