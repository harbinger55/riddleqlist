class CreateBosses < ActiveRecord::Migration
  def change
    create_table :bosses do |t|
      t.text :name
      t.references :raid

      t.timestamps
    end
    add_index :bosses, :raid_id
  end
end
