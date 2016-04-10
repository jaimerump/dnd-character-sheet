# == Schema Information
#
# Table name: ability_score_blocks
#
#  id           :integer          not null, primary key
#  character_id :integer
#  strength     :integer          default("10"), not null
#  dexterity    :integer          default("10"), not null
#  constitution :integer          default("10"), not null
#  intelligence :integer          default("10"), not null
#  wisdom       :integer          default("10"), not null
#  charisma     :integer          default("10"), not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'rails_helper'

RSpec.describe AbilityScoreBlock, type: :model do
  
  describe ".modifier_for" do 

    it "calculates the correct modifiers" do 
      mappings = [
        {stat: 1, modifier: -5},
        {stat: 2, modifier: -4},
        {stat: 3, modifier: -4},
        {stat: 4, modifier: -3},
        {stat: 5, modifier: -3},
        {stat: 6, modifier: -2},
        {stat: 7, modifier: -2},
        {stat: 8, modifier: -1},
        {stat: 9, modifier: -1},
        {stat: 10, modifier: 0},
        {stat: 11, modifier: 0},
        {stat: 12, modifier: 1},
        {stat: 13, modifier: 1},
        {stat: 14, modifier: 2},
        {stat: 15, modifier: 2},
        {stat: 16, modifier: 3},
        {stat: 17, modifier: 3},
        {stat: 18, modifier: 4},
        {stat: 19, modifier: 4},
        {stat: 20, modifier: 5}
      ]

      mappings.each do |mapping|
        expect(AbilityScoreBlock.modifier_for(mapping[:stat])).to equal(mapping[:modifier])
      end
    end

  end

end
