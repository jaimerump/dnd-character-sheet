module Levellable
  extend ActiveSupport::Concern

  # Constants
  LEVEL_STATS = [
    {level: 1, experience: 0, proficiency: 2},
    {level: 2, experience: 300, proficiency: 2},
    {level: 3, experience: 900, proficiency: 2},
    {level: 4, experience: 2_700, proficiency: 2},
    {level: 5, experience: 6_500, proficiency: 3},
    {level: 6, experience: 14_000, proficiency: 3},
    {level: 7, experience: 23_000, proficiency: 3},
    {level: 8, experience: 34_000, proficiency: 3},
    {level: 9, experience: 48_000, proficiency: 4},
    {level: 10, experience: 64_000, proficiency: 4},
    {level: 11, experience: 85_000, proficiency: 4},
    {level: 12, experience: 100_000, proficiency: 4},
    {level: 13, experience: 120_000, proficiency: 5},
    {level: 14, experience: 140_000, proficiency: 5},
    {level: 15, experience: 165_000, proficiency: 5},
    {level: 16, experience: 195_000, proficiency: 5},
    {level: 17, experience: 225_000, proficiency: 6},
    {level: 18, experience: 265_000, proficiency: 6},
    {level: 19, experience: 305_000, proficiency: 6},
    {level: 20, experience: 355_000, proficiency: 6}
  ]

  def current_level_stats
    LEVEL_STATS.select{|l| l[:experience] <= experience}.last
  end

  def level
    current_level_stats[:level]
  end

  def proficiency
    current_level_stats[:proficiency]
  end

end