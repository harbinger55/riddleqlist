class CreateDifficulties < ActiveRecord::Migration
  def change
    create_table :difficulties do |t|
      t.text :name

      t.timestamps
    end
  end
end
