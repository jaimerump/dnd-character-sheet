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

class AbilityScoreBlock < ActiveRecord::Base

  # Constant
  BASE_ABILITY_SCORE = 10
  ABBREVIATIONS = {
    'strength' => 'str',
    'dexterity' => 'dex',
    'constitution' => 'con',
    'intelligence' => 'int',
    'wisdom' => 'wis',
    'charisma' => 'cha',
  }

  # Validations
  validates :strength, presence: true, 
                        numericality: {
                          only_integer: true,
                          greater_than_or_equal_to: 0
                        }
  validates :dexterity, presence: true, 
                        numericality: {
                          only_integer: true,
                          greater_than_or_equal_to: 0
                        }
  validates :constitution, presence: true, 
                        numericality: {
                          only_integer: true,
                          greater_than_or_equal_to: 0
                        }
  validates :intelligence, presence: true, 
                        numericality: {
                          only_integer: true,
                          greater_than_or_equal_to: 0
                        }
  validates :wisdom, presence: true, 
                        numericality: {
                          only_integer: true,
                          greater_than_or_equal_to: 0
                        }
  validates :charisma, presence: true, 
                        numericality: {
                          only_integer: true,
                          greater_than_or_equal_to: 0
                        }

  # Relations
  belongs_to :character 

  # Alias all of the attribute method names, eg: strength to str
  def self.generate_aliases
    all_methods = self.new.methods # self is the class, self.new is a new instance

    ABBREVIATIONS.each do |ability_name, abb|
      # Get the existing methods
      methods_to_alias = all_methods.select{|method_name| method_name.to_s.include? ability_name }

      # Create the aliases
      methods_to_alias.each do |original_method_name|
        new_method_name = original_method_name.to_s.gsub(ability_name, abb)
        alias_method new_method_name, original_method_name
      end
    end
  end

  def strength_modifier
    self.class.modifier_for(strength)
  end

  def dexterity_modifier
    self.class.modifier_for(dexterity)
  end

  def constitution_modifier
    self.class.modifier_for(constitution)
  end

  def intelligence_modifier
    self.class.modifier_for(intelligence)
  end

  def wisdom_modifier
    self.class.modifier_for(wisdom)
  end

  def charisma_modifier
    self.class.modifier_for(charisma)
  end

  # Calculates the modifier for the given base stat
  # @param [Integer] stat
  # @return [Integer]
  def self.modifier_for(stat)
    ( (stat - BASE_ABILITY_SCORE) / 2 ).floor
  end

  generate_aliases

end
