get '/users' do

  @users = User.all #define instance variable for view
  @hotspots = Hotspot.all
  erb :'users/index' #show all users view (index)

end

get '/users/new' do

  erb :'users/new' #show new users view

end

get '/users/vote' do

  erb :'users/vote'

end

post '/users' do
  @users = User.new(params[:user])
  if @users.save
    session[:user_id] = @users.id
    redirect '/'
  else
    status 418
    @errors = @users.errors.full_messages
    erb :'users/new'
  end
end

############################################
##############login and logout##############
############################################

get '/users/login' do
  erb :'users/login'
end

post '/users/login' do
  user = User.authenticate(params[:user][:email], params[:user][:password])
  if user
    session[:user_id] = user.id
    redirect '/hotspots'
  else
    status 418
    @errors = ['Sorry, the credentials provided do not match']
    erb :'users/login'
  end
end

delete "/users/logout" do
  session[:user_id] = nil
  redirect '/hotspots'
end

############################################

get '/users/:id' do
  @user = User.find(params[:id]) #define instance variable for view
  @reviews = @user.reviews
  if @user
    erb :'users/show'
  else
    status 418
    @errors = @user.errors.full_messages
    erb :'users/index'
  end
end


get '/users/:id/edit' do

  #get params from url
  @user = User.find(params[:id]) #define intstance variable for view

  erb :'users/edit' #show edit user view

end

patch '/users/:id' do

  #get params from url
  @user = User.find(params[:id]) #define variable to edit

  @user.assign_attributes(params[:user]) #assign new attributes

  if @user.save #saves new user or returns false if unsuccessful
    redirect '/users' #redirect back to users index page
  else
  	status 418
    @errors = @user.errors.full_messages
    erb :'users/edit' #show edit user view again(potentially displaying errors)
  end

end

delete '/users/:id' do

  #get params from url
  @user = User.find(params[:id]) #define user to delete
  if @user
    @user.destroy #delete user
    redirect '/user' #redirect back to users index page
  else
    status 418
    @errors = @user.errors.full_messages
    erb :'users/index'
  end


end

