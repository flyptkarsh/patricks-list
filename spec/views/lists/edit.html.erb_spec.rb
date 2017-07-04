require 'rails_helper'

RSpec.describe "lists/edit", type: :view do
  before(:each) do
    @list = assign(:list, List.create!(
      :heading => "MyString",
      :sub_heading => "MyString",
      :description => "MyText",
      :user => nil
    ))
  end

  it "renders the edit list form" do
    render

    assert_select "form[action=?][method=?]", list_path(@list), "post" do

      assert_select "input#list_heading[name=?]", "list[heading]"

      assert_select "input#list_sub_heading[name=?]", "list[sub_heading]"

      assert_select "textarea#list_description[name=?]", "list[description]"

      assert_select "input#list_user_id[name=?]", "list[user_id]"
    end
  end
end
