# == Schema Information
#
# Table name: characters
#
#  id          :integer          not null, primary key
#  name        :string
#  player_name :string
#  race        :string
#  class_name  :string
#  alignment   :integer
#  background  :string
#  experience  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
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
  has_one :ability_scores, class_name: 'AbilityScoreBlock',
                           foreign_key: 'character_id'

end
