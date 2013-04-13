class PopulateLocations < ActiveRecord::Migration
  def up
  	Location.create(:name => "Silithus")
  	Location.create(:name => "Blackrock Mountain")
  	Location.create(:name => "Shadowmoon Valley")
  	Location.create(:name => "Blade's Edge Mountains")
  	Location.create(:name => "Deadwind Pass")
  	Location.create(:name => "Hellfire Peninsula")
  	Location.create(:name => "Zangarmarsh")
  	Location.create(:name => "Netherstorm")
  	Location.create(:name => "Caverns of Time")
  	Location.create(:name => "Isle of Quel'Danas")
  	Location.create(:name => "Icecrown")
  	Location.create(:name => "Dragonblight")
  	Location.create(:name => "Dustwallow Marsh")
  	Location.create(:name => "Borean Tundra")
  	Location.create(:name => "The Storm Peaks")
  	Location.create(:name => "Wintergrasp")
  	Location.create(:name => "Tol Barad")
  	Location.create(:name => "Dragon Soul")
  	Location.create(:name => "Mount Hyjal")
  	Location.create(:name => "Twilight Highlands")
  	Location.create(:name => "Uldum")
  	Location.create(:name => "Dread Wastes")
  	Location.create(:name => "Kun-Lai Summit")
  	Location.create(:name => "The Veiled Stair")
  	Location.create(:name => "Isle of Thunder")
  end

  def down
  end
end
