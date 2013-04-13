class Raids < ActiveRecord::Base
  belongs_to :location
  belongs_to :expansion

  attr_accessible :level, :name, :expansion_id, :location_id
  # :name can not be unique becuase they re-use bosses in newer raids, esp cata
  validates :name, :presence => true
  validates :level, :numericality => { :only_integer => true }, :presence => true
end
