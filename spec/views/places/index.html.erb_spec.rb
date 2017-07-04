require 'rails_helper'

RSpec.describe "places/index", type: :view do
  before(:each) do
    assign(:places, [
      Place.create!(
        :name => "Name",
        :address => "Address",
        :heading => "Heading",
        :description => "Description",
        :latitude => "9.99",
        :longitude => "9.99"
      ),
      Place.create!(
        :name => "Name",
        :address => "Address",
        :heading => "Heading",
        :description => "Description",
        :latitude => "9.99",
        :longitude => "9.99"
      )
    ])
  end

  # it "renders a list of places" do
  #   render
  #   assert_select "tr>td", :text => "Name".to_s, :count => 2
  #   assert_select "tr>td", :text => "Address".to_s, :count => 2
  #   assert_select "tr>td", :text => "Heading".to_s, :count => 2
  #   assert_select "tr>td", :text => "Description".to_s, :count => 2
  #   assert_select "tr>td", :text => "9.99".to_s, :count => 2
  #   assert_select "tr>td", :text => "9.99".to_s, :count => 2
  #   assert_select "tr>td", :text => nil.to_s, :count => 2
  # end
end
