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

require 'rails_helper'

RSpec.describe Character, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
