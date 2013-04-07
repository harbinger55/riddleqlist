class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.integer :id_bnet
      t.text :name

      t.timestamps
    end
  end
end
