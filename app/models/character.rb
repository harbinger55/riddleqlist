class Character < ActiveRecord::Base
  belongs_to :spec
  belongs_to :primary_talent, :class_name => "Talent"
  belongs_to :secondary_talent, :class_name => "Talent"
  belongs_to :guild
  belongs_to :race
  attr_accessible :name, :spec, :primary_talent_id, :secondary_talent_id, :guild_id, :race, :race_id, :spec_id, :notes, :rating
end
