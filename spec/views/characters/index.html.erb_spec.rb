require 'rails_helper'

RSpec.describe "characters/index", type: :view do
  before(:each) do
    assign(:characters, [
      Character.create!(
        :name => "",
        :player_name => "",
        :race => "",
        :class_name => "",
        :alignment => "",
        :background => "",
        :experience => ""
      ),
      Character.create!(
        :name => "",
        :player_name => "",
        :race => "",
        :class_name => "",
        :alignment => "",
        :background => "",
        :experience => ""
      )
    ])
  end

  it "renders a list of characters" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
