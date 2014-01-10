require 'spec_helper'

describe "apartments/new" do
  before(:each) do
    assign(:apartment, stub_model(Apartment,
      :designation_building => "MyString",
      :number => "MyString"
    ).as_new_record)
  end

  it "renders new apartment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", apartments_path, "post" do
      assert_select "input#apartment_designation_building[name=?]", "apartment[designation_building]"
      assert_select "input#apartment_number[name=?]", "apartment[number]"
    end
  end
end
