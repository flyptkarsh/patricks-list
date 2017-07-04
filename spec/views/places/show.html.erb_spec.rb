require 'rails_helper'

RSpec.describe "places/show", type: :view do
  before(:each) do
    @place = assign(:place, Place.create!(
      :name => "Name",
      :address => "Address",
      :heading => "Heading",
      :description => "Description",
      :latitude => "9.99",
      :longitude => "9.99",
      :list => nil
    ))
  end

  # it "renders attributes in <p>" do
  #   render
  #   expect(rendered).to match(/Name/)
  #   expect(rendered).to match(/Address/)
  #   expect(rendered).to match(/Heading/)
  #   expect(rendered).to match(/Description/)
  #   expect(rendered).to match(/9.99/)
  #   expect(rendered).to match(/9.99/)
  #   expect(rendered).to match(//)
  # end
end
