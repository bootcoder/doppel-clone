enable :sessions

get '/' do
	erb :index
	# session.clear
end

get '/account/create' do
	erb :account_create
end

post '/account/create' do
	#validate presence of name
	if params[:name].length == 0
		session[:message] = "Please enter your name to create an account!"
		redirect '/account/create'
	end
	#validates username is not taken
	if User.find_by_username(params[:username]) != nil
		session[:message] = "That username has been taken!"
		redirect '/account/create'
	end
	#validates email has not already been used
	if User.find_by_email(params[:email]) != nil
		session[:message] = "Account has already been created with this email!"
		redirect '/account/create'
	end
	#validates password is a valid length
	if params[:password].length < 6 || params[:password].length > 15
		session[:message] = "Password must be between 6 and 15 characters!"
		redirect '/account/create'
	end
	#If all above validations pass and pass and confirm pass match, create account
	if params[:password] == params[:confirm_password]
		new_user = User.create(name: params[:name], username: params[:username], email: params[:email], password: params[:password])
		session[:message] = nil
		session[:id] = new_user.id
		redirect "/users/#{new_user.username}"
	else
		session[:message] = "Passwords do not match!"
		redirect '/account/create'
	end
end


post '/sessions/create' do

	user = User.find_by_username(params[:username])
	if user == nil || user.password != params[:password]
		# refactor message for non persistent state...
		session[:message] = "Login Failed"
		redirect '/'
	else
		session[:id] = user.id
		session[:message] = nil
		redirect "/users/#{user.username}"
	end
end


get '/users/:username' do
	@user = User.find_by_username(params[:username])
	erb :user_page
end


get '/logout' do
	session.clear
	redirect '/'
end

post '/post_twit' do
	user = User.find(session[:id])
	user.twits << Twit.create({content: params[:content]})
	user.save
	redirect "/users/#{user.username}"
end


post '/users/follow/:username' do
	to_follow = User.find_by_username (params[:username])
	if is_following?(to_follow)
		unfollow(to_follow)
	else
		create_follow(to_follow)
	end
	redirect "/users/#{params[:username]}"
end





























