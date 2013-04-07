class CreateCharacterRoles < ActiveRecord::Migration
  def change
    create_table :character_roles do |t|
      t.references :character
      t.references :role

      t.timestamps
    end
  end
end
