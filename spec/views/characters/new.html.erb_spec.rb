require 'rails_helper'

RSpec.describe "characters/new", type: :view do
  before(:each) do
    assign(:character, Character.new(
      :name => "",
      :player_name => "",
      :race => "",
      :class_name => "",
      :alignment => "",
      :background => "",
      :experience => ""
    ))
  end

  it "renders new character form" do
    render

    assert_select "form[action=?][method=?]", characters_path, "post" do

      assert_select "input#character_name[name=?]", "character[name]"

      assert_select "input#character_player_name[name=?]", "character[player_name]"

      assert_select "input#character_race[name=?]", "character[race]"

      assert_select "input#character_class_name[name=?]", "character[class_name]"

      assert_select "input#character_alignment[name=?]", "character[alignment]"

      assert_select "input#character_background[name=?]", "character[background]"

      assert_select "input#character_experience[name=?]", "character[experience]"
    end
  end
end
