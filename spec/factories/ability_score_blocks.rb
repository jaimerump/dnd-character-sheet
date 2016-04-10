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

FactoryGirl.define do
  factory :ability_score_block do
    character ""
strength 1
dexterity 1
constitution 1
intelligence 1
wisdom 1
charisma 1
  end

end
