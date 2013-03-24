class ChangeColumnNameToguildInCharacter < ActiveRecord::Migration
  def up
	rename_column :characters, :guid_id, :guild_id
  end

  def down
  end
end
