class AddColumnRatingCharacters < ActiveRecord::Migration
  def up
	add_column :characters, :rating, :integer
  end

  def down
  end
end
