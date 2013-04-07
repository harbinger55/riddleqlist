class PopulateRaces < ActiveRecord::Migration
  def up
        Race.create(:id_bnet => "15",:name => "Pandaren")
        Race.create(:id_bnet => "22",:name => "Worgen")
        Race.create(:id_bnet => "11",:name => "Draenei")
        Race.create(:id_bnet => "3",:name => "Dwarf")
        Race.create(:id_bnet => "7",:name => "Gnome")
        Race.create(:id_bnet => "1",:name => "Human")
        Race.create(:id_bnet => "4", :name => "Night Elf")
  end

  def down
  end
end
