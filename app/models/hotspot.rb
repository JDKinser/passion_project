class Hotspot < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  has_many :boxes
  has_many :votes, through: :boxes, source: :votes
end

