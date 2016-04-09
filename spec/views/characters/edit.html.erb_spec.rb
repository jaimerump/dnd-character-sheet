require 'rails_helper'

RSpec.describe "characters/edit", type: :view do
  before(:each) do
    @character = assign(:character, Character.create!(
      :name => "",
      :player_name => "",
      :race => "",
      :class_name => "",
      :alignment => "",
      :background => "",
      :experience => ""
    ))
  end

  it "renders the edit character form" do
    render

    assert_select "form[action=?][method=?]", character_path(@character), "post" do

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
