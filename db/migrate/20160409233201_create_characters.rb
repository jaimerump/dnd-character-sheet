class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :player_name
      t.string :race
      t.string :class_name
      t.integer :alignment
      t.string :background
      t.integer :experience

      t.timestamps null: false
    end
  end
end
