require 'rails_helper'

RSpec.describe "characters/show", type: :view do
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

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
