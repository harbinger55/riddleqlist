class PopulateExpansions < ActiveRecord::Migration
  def up
  	Expansion.create(:name => "Classic")
  	Expansion.create(:name => "The Burning Crusade")
  	Expansion.create(:name => "Wrath of the Lich King")
  	Expansion.create(:name => "Cataclysm")
  	Expansion.create(:name => "Mists of Pandaria")
  end

  def down
  end
end
