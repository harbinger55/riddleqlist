class CharactersBoss < ActiveRecord::Base
  belongs_to :character
  belongs_to :boss
  # attr_accessible :title, :body
end
