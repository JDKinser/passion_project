get '/hotspots' do

  @hotspots = Hotspot.all 

  erb :'hotspots/index'

end

get '/hotspots/new' do

  erb :'hotspots/new' #show new hotspots view

end


post '/hotspots' do

  @hotspot = Hotspot.new(params[:hotspot]) #create new hotspot

  if @hotspot.save #saves new hotspot or returns false if unsuccessful
    redirect "/hotspots/#{@hotspot.id}/edit" #redirect to hotspots edit page
  else
    erb :'hotspots/new' # show new hotspots view again(potentially displaying errors)
  end

end


get '/hotspots/:id' do

  @hotspot = Hotspot.find(params[:id]) #define instance variable for view
  @boxes = @hotspot.boxes


  erb :'hotspots/show' #show single hotspot view

end


get '/hotspots/:id/edit' do

  @hotspot = Hotspot.find(params[:id]) #define intstance variable for view

  erb :'hotspots/edit' #show edit hotspot view

end


put '/hotspots/:id' do

  @hotspot = Hotspot.find(params[:id]) #define variable to edit

  @hotspot.assign_attributes(params[:hotspot]) #assign new attributes

  if @hotspot.save #saves new hotspot or returns false if unsuccessful
    redirect '/hotspots' #redirect back to hotspots index page
  else
    erb :'hotspots/edit' #show edit hotspot view again(potentially displaying errors)
  end

end


delete '/hotspots/:id' do

  @hotspot = Hotspot.find(params[:id]) #define hotspot to delete

  @hotspot.destroy #delete hotspot

  redirect '/hotspots' #redirect back to hotspots index page

end
