# == Schema Information
#
# Table name: characters
#
#  id                 :integer          not null, primary key
#  name               :string
#  player_name        :string
#  race               :string
#  class_name         :string
#  alignment          :integer
#  background         :string
#  experience         :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  strength_score     :integer
#  dexterity_score    :integer
#  constitution_score :integer
#  intelligence_score :integer
#  wisdom_score       :integer
#  charisma_score     :integer
#

require 'rails_helper'

RSpec.describe Character, type: :model do
  
  describe "#current_level_stats" do 

    it "returns the highest level hash the character has attained" do
      # Test <
      c = build(:character, experience: Character::LEVEL_STATS.second[:experience] + 1)
      expect(c.current_level_stats).to equal(Character::LEVEL_STATS.second)

      # Test =
      c.experience = Character::LEVEL_STATS.second[:experience]
      expect(c.current_level_stats).to equal(Character::LEVEL_STATS.second)
    end

  end

  describe "#level" do

    it "returns the highest level the character has attained" do 
      c = build(:character, experience: Character::LEVEL_STATS.second[:experience] + 1)
      expect(c.level).to equal(2)
    end

  end

  describe "#proficiency" do

    it "returns the profieciency bonus of highest level the character has attained" do 
      c = build(:character, experience: Character::LEVEL_STATS.last[:experience])
      expect(c.proficiency).to equal(Character::LEVEL_STATS.last[:proficiency])
    end

  end  

end
