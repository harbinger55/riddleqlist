class PopulateProfession < ActiveRecord::Migration
  def up
        Profession.create(:name => "Alchemy")
        Profession.create(:name => "Blacksmithing")
        Profession.create(:name => "Enchanting")
        Profession.create(:name => "Engineering")
        Profession.create(:name => "Herbalism")
        Profession.create(:name => "Inscription")
        Profession.create(:name => "Jewelcrafting")
        Profession.create(:name => "Leatherworking")
        Profession.create(:name => "Mining")
        Profession.create(:name => "Skinning")
        Profession.create(:name => "Talioring")
  end

  def down
  end
end
