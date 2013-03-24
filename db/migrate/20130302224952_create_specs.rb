class CreateSpecs < ActiveRecord::Migration
  def change
    create_table :specs do |t|
      t.text :name

      t.timestamps
    end
  end
end
