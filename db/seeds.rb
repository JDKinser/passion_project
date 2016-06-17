Hotspot.create!(name: 'SmashBros Picker')

Box.create!(x_coord: 300, y_coord: 300, width: 50, height: 50, hotspot_id: 1)
Box.create!(x_coord: 400, y_coord: 300, width: 50, height: 50, hotspot_id: 1)
Box.create!(x_coord: 500, y_coord: 300, width: 50, height: 50, hotspot_id: 1)
Box.create!(x_coord: 600, y_coord: 300, width: 50, height: 50, hotspot_id: 1)
Box.create!(x_coord: 700, y_coord: 300, width: 50, height: 50, hotspot_id: 1)

Vote.create!(count: 12, box_id: 1)
Vote.create!(count: 5, box_id: 2)
Vote.create!(count: 2, box_id: 3)
Vote.create!(count: 24, box_id: 4)
Vote.create!(count: 5, box_id: 5)
