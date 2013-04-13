class CreateExpansions < ActiveRecord::Migration
  def change
    create_table :expansions do |t|
      t.text :name

      t.timestamps
    end
  end
end
