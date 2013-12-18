require 'spec_helper'

describe "condominia/index" do
  before(:each) do
    assign(:condominia, [
      stub_model(Condominium,
        :address => "Address",
        :number => "Number",
        :zip_code => "Zip Code",
        :building => 1,
        :designation_building => "Designation Building"
      ),
      stub_model(Condominium,
        :address => "Address",
        :number => "Number",
        :zip_code => "Zip Code",
        :building => 1,
        :designation_building => "Designation Building"
      )
    ])
  end

  it "renders a list of condominia" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Number".to_s, :count => 2
    assert_select "tr>td", :text => "Zip Code".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Designation Building".to_s, :count => 2
  end
end
