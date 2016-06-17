class Box < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :hotspot
  has_many :votes
end
