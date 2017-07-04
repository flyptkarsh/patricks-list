require 'rails_helper'

RSpec.describe "places/edit", type: :view do
  before(:each) do
    @place = assign(:place, Place.create!(
      :name => "MyString",
      :address => "MyString",
      :heading => "MyString",
      :description => "MyString",
      :latitude => "9.99",
      :longitude => "9.99",
      :list => nil
    ))
  end

  it "renders the edit place form" do
    render

    assert_select "form[action=?][method=?]", place_path(@place), "post" do

      assert_select "input#place_name[name=?]", "place[name]"

      assert_select "input#place_address[name=?]", "place[address]"

      assert_select "input#place_heading[name=?]", "place[heading]"

      assert_select "input#place_description[name=?]", "place[description]"

      assert_select "input#place_latitude[name=?]", "place[latitude]"

      assert_select "input#place_longitude[name=?]", "place[longitude]"

      assert_select "input#place_list_id[name=?]", "place[list_id]"
    end
  end
end
