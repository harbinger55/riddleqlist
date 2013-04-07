class CharactersRole < ActiveRecord::Base
  belongs_to :character
  belongs_to :role
  # attr_accessible :title, :body
end
