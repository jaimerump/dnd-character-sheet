class CreateAbilityScoreBlocks < ActiveRecord::Migration
  def change
    create_table :ability_score_blocks do |t|
      t.references :character
      t.integer :strength, null: false, default: 10
      t.integer :dexterity, null: false, default: 10
      t.integer :constitution, null: false, default: 10
      t.integer :intelligence, null: false, default: 10
      t.integer :wisdom, null: false, default: 10
      t.integer :charisma, null: false, default: 10

      t.timestamps null: false
    end
  end
end
