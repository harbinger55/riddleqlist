class CreateProfessions < ActiveRecord::Migration
  def change
    create_table :professions do |t|
      t.text :name
      t.integer :level

      t.timestamps
    end
  end
end
