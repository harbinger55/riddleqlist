class PopulateDifficulties < ActiveRecord::Migration
  def up
  	Difficulty.create(:name => "LFR")
  	Difficulty.create(:name => "10 Man Normal")
  	Difficulty.create(:name => "10 Man Herocic")
  	Difficulty.create(:name => "25 Man Normal")
  	Difficulty.create(:name => "25 Man Herocic")
  end

  def down
  end
end
