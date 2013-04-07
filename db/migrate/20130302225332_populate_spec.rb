class PopulateSpec < ActiveRecord::Migration
  def up
        Spec.create(:id_bnet => "1", :name => "Warrior")
        Spec.create(:id_bnet => "2",:name => "Paladin")
        Spec.create(:id_bnet => "3",:name => "Hunter")
        Spec.create(:id_bnet => "4",:name => "Rogue")
        Spec.create(:id_bnet => "5",:name => "Priest")
        Spec.create(:id_bnet => "6",:name => "Death Knight")
        Spec.create(:id_bnet => "7",:name => "Shaman")
        Spec.create(:id_bnet => "8",:name => "Mage")
        Spec.create(:id_bnet => "9",:name => "Warlock")
        Spec.create(:id_bnet => "10",:name => "Monk")
        Spec.create(:id_bnet => "11",:name => "Druid")
  end

  def down
  end
end
