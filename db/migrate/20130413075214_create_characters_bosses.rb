class CreateCharactersBosses < ActiveRecord::Migration
  def change
    create_table :characters_bosses do |t|
      t.references :character
      t.references :boss

      t.timestamps
    end
    add_index :characters_bosses, :character_id
    add_index :characters_bosses, :boss_id
  end
end
