class CreateCharactersRoles < ActiveRecord::Migration
  def change
    create_table :characters_roles, :id => false do |t|
      t.references :character
      t.references :role
    end
    add_index :characters_roles, :character_id
    add_index :characters_roles, :role_id
  end
end
