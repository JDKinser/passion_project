class CreateBoxes < ActiveRecord::Migration
  def change
  	create_table :boxes do |t|
     
      t.integer  :x_coord
      t.integer  :y_coord
      t.integer  :width
      t.integer  :height
      t.integer  :hotspot_id
      t.timestamps(null: false)
  	end
  end
end
