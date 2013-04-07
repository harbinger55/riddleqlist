class CreateGuilds < ActiveRecord::Migration
  def change
    create_table :guilds do |t|
      t.integer :id_bnet	
      t.text :name

      t.timestamps
    end
  end
end
