class Vote < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :box
  belongs_to :user

  

  # def get_vote_percent(hotspot_id)
  	
  # end

end
