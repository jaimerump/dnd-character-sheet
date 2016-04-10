class AddAbilityScores < ActiveRecord::Migration
  def change
    change_table :characters do |t|
      t.integer :strength_score
      t.integer :dexterity_score
      t.integer :constitution_score
      t.integer :intelligence_score
      t.integer :wisdom_score
      t.integer :charisma_score
    end
  end
end
