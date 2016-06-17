post '/boxes' do

  @box = Box.new(params[:box]) #create new box

  if @box.save #saves new box or returns false if unsuccessful
    redirect "/hotspots" #redirect to hotspots page
  else
    erb :'boxes/new' # show new boxes view again(potentially displaying errors)
  end

end