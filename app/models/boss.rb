class Boss < ActiveRecord::Base
  belongs_to :raid
  has_and_belongs_to_many :character
  attr_accessible :name, :raid_id
  validates :name, :presence => true, :uniqueness => true
end
