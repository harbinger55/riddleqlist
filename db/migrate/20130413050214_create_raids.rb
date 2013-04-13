class CreateRaids < ActiveRecord::Migration
  def change
    create_table :raids do |t|
      t.text :name
      t.integer :level
      t.references :location
      t.references :expansion

      t.timestamps
    end
    add_index :raids, :location_id
  end
end
