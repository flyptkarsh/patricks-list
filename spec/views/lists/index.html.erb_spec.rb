require 'rails_helper'

RSpec.describe "lists/index", type: :view do
  before(:each) do
    assign(:lists, [ create(:list)])
  end

  it "renders a list of lists" do

  end
end
