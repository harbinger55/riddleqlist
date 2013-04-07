class CreateTalents < ActiveRecord::Migration
  def change
    create_table :talents do |t|
      t.integer :id_bnet	
      t.text :name

      t.timestamps
    end
  end
end
