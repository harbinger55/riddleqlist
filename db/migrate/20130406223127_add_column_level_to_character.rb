class AddColumnLevelToCharacter < ActiveRecord::Migration
  def up
	add_column :characters, :level, :integer
  end
end
