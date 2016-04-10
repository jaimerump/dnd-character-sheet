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

class Character < ActiveRecord::Base

  # Modules
  include Levellable

  # Attributes
  enum alignment: [:lawful_good, :lawful_neutral, :lawful_evil,
                   :neutral_good, :true_neutral, :neutral_evil,
                   :chaotic_good, :chaotic_neutral, :chaotic_evil]

  # Validations
  validates :name, presence: true
  validates :player_name, presence: true
  validates :race, presence: true
  validates :class_name, presence: true
  validates :alignment, presence: true
  validates :background, presence: true
  validates :experience, presence: true, 
                         numericality: {
                           only_integer: true,
                           greater_than_or_equal_to: 0
                         }

  # Relations
  
  # Class methods

  # Instance methods

  def strength
    AbilityScore.new(strength_score)
  end

  def dexterity
    AbilityScore.new(dexterity_score)
  end

  def constitution
    AbilityScore.new(constitution_score)
  end

  def intelligence
    AbilityScore.new(intelligence_score)
  end

  def wisdom
    AbilityScore.new(wisdom_score)
  end

  def charisma
    AbilityScore.new(charisma_score)
  end

end
