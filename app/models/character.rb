class Character < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  validates :level, :numericality => { :only_integer => true }, :presence => true
  belongs_to :spec
  belongs_to :primary_talent, :class_name => "Talent"
  belongs_to :secondary_talent, :class_name => "Talent"
  belongs_to :guild
  has_and_belongs_to_many :role
  belongs_to :race
  attr_accessible :name, :spec, :primary_talent_id, :secondary_talent_id, :guild_id, :race, :race_id, :spec_id, :notes, :rating, :id_bnet, :level, :role_ids
end
