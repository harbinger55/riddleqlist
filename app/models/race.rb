class Race < ActiveRecord::Base
  attr_accessible :name, :id_bnet
  validates :name, :presence => true, :uniqueness => true
  validates :id_bnet, :numericality => { :only_integer => true }, :presence => true, :uniqueness => true
end
