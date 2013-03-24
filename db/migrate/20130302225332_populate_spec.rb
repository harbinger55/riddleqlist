class PopulateSpec < ActiveRecord::Migration
  def up
       Spec.create(:name => "Death Knight")
        Spec.create(:name => "Druid")
        Spec.create(:name => "Hunter")
        Spec.create(:name => "Mage")
        Spec.create(:name => "Monk")
        Spec.create(:name => "Paladin")
        Spec.create(:name => "Priest")
        Spec.create(:name => "Rogue")
        Spec.create(:name => "Shaman")
        Spec.create(:name => "Warlock")
        Spec.create(:name => "Warrior")
  end

  def down
  end
end
