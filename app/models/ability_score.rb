class AbilityScore

  attr_reader :score, :modifier

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

  def initialize(score)
    @score = score
  end

  def modifier
    ( (@score - BASE_ABILITY_SCORE) / 2 ).floor
  end

end