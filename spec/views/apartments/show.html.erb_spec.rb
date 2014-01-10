require 'spec_helper'

describe "apartments/show" do
  before(:each) do
    @apartment = assign(:apartment, stub_model(Apartment,
      :designation_building => "Designation Building",
      :number => "Number"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Designation Building/)
    expect(rendered).to match(/Number/)
  end
end
