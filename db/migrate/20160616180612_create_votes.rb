class CreateVotes < ActiveRecord::Migration
  def change
  	create_table :votes do |t|
     
      t.integer  :vote_count
      t.integer  :box_id
      t.timestamps(null: false)
  	end
  end
end
