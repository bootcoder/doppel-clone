# routes go here
enable :sessions

get '/' do
	erb :index
	# session.clear
end

get '/account/create' do
	erb :account_create
end

post '/account/create' do
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































