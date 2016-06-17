helpers do
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    current_user ? true : false
  end

  def add_vote_class(hotspot, user)
  	"voting_boxes" if hotspot.user != user
  end
end