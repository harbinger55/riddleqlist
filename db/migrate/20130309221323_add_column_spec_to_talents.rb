class AddColumnSpecToTalents < ActiveRecord::Migration
  def change
    add_column :talents, :spec_id, :integer
  end
end
