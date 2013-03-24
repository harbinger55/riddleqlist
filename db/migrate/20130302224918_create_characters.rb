class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.text :name
      t.references :spec
      t.references :primary_talent
      t.references :secondary_talent
      t.references :guid
      t.references :race

      t.timestamps
    end
    add_index :characters, :spec_id
    add_index :characters, :primary_talent_id
    add_index :characters, :secondary_talent_id
    add_index :characters, :guid_id
    add_index :characters, :race_id
  end
end
