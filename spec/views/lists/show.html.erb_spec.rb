require 'rails_helper'

RSpec.describe "lists/show", type: :view do
  before(:each) do
    @list = assign(:list, List.create!(
      :heading => "Heading",
      :sub_heading => "Sub Heading",
      :description => "MyText",
      :user => nil
    ))
  end
  # 
  # it "renders attributes in <p>" do
  #   render
  #   expect(rendered).to match(/Heading/)
  #   expect(rendered).to match(/Sub Heading/)
  #   expect(rendered).to match(/MyText/)
  #   expect(rendered).to match(//)
  # end
end
