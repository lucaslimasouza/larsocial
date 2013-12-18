require 'spec_helper'

describe "condominia/new" do
  before(:each) do
    assign(:condominium, stub_model(Condominium,
      :address => "MyString",
      :number => "MyString",
      :zip_code => "MyString",
      :building => 1,
      :designation_building => "MyString"
    ).as_new_record)
  end

  it "renders new condominium form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", condominia_path, "post" do
      assert_select "input#condominium_address[name=?]", "condominium[address]"
      assert_select "input#condominium_number[name=?]", "condominium[number]"
      assert_select "input#condominium_zip_code[name=?]", "condominium[zip_code]"
      assert_select "input#condominium_building[name=?]", "condominium[building]"
      assert_select "input#condominium_designation_building[name=?]", "condominium[designation_building]"
    end
  end
end
