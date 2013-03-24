class CreateGuilds < ActiveRecord::Migration
  def change
    create_table :guilds do |t|
      t.text :name

      t.timestamps
    end
  end
end
