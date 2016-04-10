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

FactoryGirl.define do

  factory :character do
    name 'Houn Wyndael'
    player_name 'Jaime'
    race 'Human (Arkaiun)'
    class_name 'Monk (Sun Soul)'
    alignment :lawful_good
    background 'Hermit'
    experience 330
  end

end
