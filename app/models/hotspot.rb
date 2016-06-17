class Hotspot < ActiveRecord::Base
  # Remember to create a migration!
  has_many :boxes
  has_many :votes, through: :boxes, source: :votes
end

