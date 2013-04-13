class PopulateRaids < ActiveRecord::Migration
  def up
  	Raids.create(:name => "Ahn'Qiraj Temple", :level => '60', :location_id => '1', :expansion_id => '1')
  	Raids.create(:name => "Blackwing Lair", :level => '60', :location_id => '2', :expansion_id => '1')
  	Raids.create(:name => "Molten Core", :level => '60', :location_id => '2', :expansion_id => '1')
  	Raids.create(:name => "Ruins of Ahn'Qiraj", :level => '60', :location_id => '1', :expansion_id => '1')
  	Raids.create(:name => "Black Temple", :level => '70', :location_id => '3', :expansion_id => '2')
  	Raids.create(:name => "Gruul's Lair", :level => '70', :location_id => '4', :expansion_id => '2')
  	Raids.create(:name => "Karazhan", :level => '70', :location_id => '5', :expansion_id => '2')
  	Raids.create(:name => "Magtheridon's Lair", :level => '70', :location_id => '6', :expansion_id => '2')
  	Raids.create(:name => "Serpentshrine Cavern", :level => '70', :location_id => '7', :expansion_id => '2')
  	Raids.create(:name => "Tempest Keep", :level => '70', :location_id => '8', :expansion_id => '2')
  	Raids.create(:name => "The Battle for Mount Hyjal", :level => '70', :location_id => '9', :expansion_id => '2')
  	Raids.create(:name => "The Sunwell", :level => '70', :location_id => '10', :expansion_id => '2')
  	Raids.create(:name => "Icecrown Citadel", :level => '80', :location_id => '11', :expansion_id => '3')
  	Raids.create(:name => "Naxxramas", :level => '80', :location_id => '12', :expansion_id => '3')
  	Raids.create(:name => "Onyxia's Lair", :level => '80', :location_id => '13', :expansion_id => '3')
  	Raids.create(:name => "The Eye of Eternity", :level => '80', :location_id => '14', :expansion_id => '3')
  	Raids.create(:name => "The Obsidian Sanctum", :level => '80', :location_id => '12', :expansion_id => '3')
  	Raids.create(:name => "The Ruby Sanctum", :level => '80', :location_id => '12', :expansion_id => '3')
  	Raids.create(:name => "Trial of the Crusader", :level => '80', :location_id => '11', :expansion_id => '3')
  	Raids.create(:name => "Ulduar", :level => '80', :location_id => '15', :expansion_id => '3')
  	Raids.create(:name => "Vault of Archavon", :level => '80', :location_id => '16', :expansion_id => '3')
  	Raids.create(:name => "Baradin Hold", :level => '85', :location_id => '17', :expansion_id => '4')
  	Raids.create(:name => "Blackwing Descent", :level => '85', :location_id => '2', :expansion_id => '4')
  	Raids.create(:name => "Dragon Soul", :level => '85', :location_id => '18', :expansion_id => '4')
  	Raids.create(:name => "Firelands", :level => '85', :location_id => '19', :expansion_id => '4')
  	Raids.create(:name => "The Bastion of Twilight", :level => '85', :location_id => '20', :expansion_id => '4')
  	Raids.create(:name => "Throne of the Four Winds", :level => '85', :location_id => '21', :expansion_id => '4')
  	Raids.create(:name => "Heart of Fear", :level => '90', :location_id => '22', :expansion_id => '5')
  	Raids.create(:name => "Mogu'shan Vaults", :level => '90', :location_id => '23', :expansion_id => '5')
  	Raids.create(:name => "Terrace of Endless Spring", :level => '90', :location_id => '24', :expansion_id => '5')
  	Raids.create(:name => "Throne of Thunder", :level => '90', :location_id => '25', :expansion_id => '5')
  end

  def down
  end
end

