require 'spec_helper'

describe "apartments/index" do
  before(:each) do
    assign(:apartments, [
      stub_model(Apartment,
        :designation_building => "Designation Building",
        :number => "Number"
      ),
      stub_model(Apartment,
        :designation_building => "Designation Building",
        :number => "Number"
      )
    ])
  end

  it "renders a list of apartments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Designation Building".to_s, :count => 2
    assert_select "tr>td", :text => "Number".to_s, :count => 2
  end
end
