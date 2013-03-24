class PopulateRaces < ActiveRecord::Migration
  def up
	Race.create(:name => "Draenei")
	Race.create(:name => "Dwarf")
	Race.create(:name => "Gnome")
	Race.create(:name => "Human")
	Race.create(:name => "Night Elf")
	Race.create(:name => "Worgen")
	Race.create(:name => "Pandaren")
  end

  def down
  end
end
