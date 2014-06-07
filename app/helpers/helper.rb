helpers do
  def current_user
    if session[:id]
      @current_user ||= User.find_by_id(session[:id])
    end
  end

  def is_following?(user_id)
  	list = User.find(user_id).follower_users
  	list.each { |user| return true if user.id == current_user.id }
  	false
  end

  def create_follow(user_id)
  	current_user
		FollowConnection.create( follower_user_id: user_id, followed_user_id: @current_user.id)
  end

  def unfollow(user_id)
  	current_user
  	FollowConnection.destroy( follower_user_id: user_id, followed_user_id: @current_user.id)
  end

end

