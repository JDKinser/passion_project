get '/livestream/:id' do

  @hotspot = Hotspot.find(params[:id]) #define instance variable for view
  @boxes = @hotspot.boxes


  erb :'livestream/show', layout: false

end