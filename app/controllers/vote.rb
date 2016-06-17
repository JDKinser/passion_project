post '/vote' do

  vote = Vote.find_by(box_id: params[:box_id]) 
  
  if !vote
  	@result = Vote.create(box_id: params[:box_id], vote_count: 1)
  else
  	@result = vote.increment!(:vote_count)
  	p "hey im trying to increment"
  end

  erb :'votes/vote', layout: false

end