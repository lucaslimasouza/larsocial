require 'spec_helper'

describe "apartments/edit" do
  before(:each) do
    @apartment = assign(:apartment, stub_model(Apartment,
      :designation_building => "MyString",
      :number => "MyString"
    ))
  end

  it "renders the edit apartment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", apartment_path(@apartment), "post" do
      assert_select "input#apartment_designation_building[name=?]", "apartment[designation_building]"
      assert_select "input#apartment_number[name=?]", "apartment[number]"
    end
  end
end
