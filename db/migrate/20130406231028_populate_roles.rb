class PopulateRoles < ActiveRecord::Migration
  def up
  	Role.create(:name => "Tank")
  	Role.create(:name => "Healer")
  	Role.create(:name => "DPS")
  end

  def down
  end
end
