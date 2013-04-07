class CreateSpecs < ActiveRecord::Migration
  def change
    create_table :specs do |t|
      t.integer :id_bnet
      t.text :name

      t.timestamps
    end
  end
end
