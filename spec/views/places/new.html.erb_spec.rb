require 'rails_helper'

RSpec.describe "places/new", type: :view do
  before(:each) do
    assign(:place, Place.new(
      :name => "MyString",
      :address => "MyString",
      :heading => "MyString",
      :description => "MyString",
      :latitude => "9.99",
      :longitude => "9.99",
      :list => nil
    ))
  end
  # 
  # it "renders new place form" do
  #   render
  #
  #   assert_select "form[action=?][method=?]", places_path, "post" do
  #
  #     assert_select "input#place_name[name=?]", "place[name]"
  #
  #     assert_select "input#place_address[name=?]", "place[address]"
  #
  #     assert_select "input#place_heading[name=?]", "place[heading]"
  #
  #     assert_select "input#place_description[name=?]", "place[description]"
  #
  #     assert_select "input#place_latitude[name=?]", "place[latitude]"
  #
  #     assert_select "input#place_longitude[name=?]", "place[longitude]"
  #
  #     assert_select "input#place_list_id[name=?]", "place[list_id]"
  #   end
  # end
end
