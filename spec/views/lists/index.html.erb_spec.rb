require 'rails_helper'

RSpec.describe "lists/index", type: :view do
  before(:each) do
    assign(:lists, [
      List.create!(
        :heading => "Heading",
        :sub_heading => "Sub Heading",
        :description => "MyText",
        :user => nil
      ),
      List.create!(
        :heading => "Heading",
        :sub_heading => "Sub Heading",
        :description => "MyText",
        :user => nil
      )
    ])
  end

  it "renders a list of lists" do
    render
    assert_select "tr>td", :text => "Heading".to_s, :count => 2
    assert_select "tr>td", :text => "Sub Heading".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
