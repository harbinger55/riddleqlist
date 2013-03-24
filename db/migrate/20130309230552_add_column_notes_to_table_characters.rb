class AddColumnNotesToTableCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :notes, :text
  end
end
