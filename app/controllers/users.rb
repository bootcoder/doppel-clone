#users controller
#routes for user profiles





get "/profile/:username" do
	current_user
	erb :user_profile
end

get '/profile/:username/update' do
	current_user
	erb :user_update
end

get '/profile/:username/password' do
	current_user
	erb :user_update_password
end


post '/profile/:username/update' do
	p params
	current_user.update(name: params[:name], username: params[:username], email: params[:email])
	redirect "/profile/#{current_user.username}"

end

post '/profile/:username/password' do
	if params[:old_password] == current_user.password && (params[:password] == params[:confirm_password]) && params[:password] != nil && params[:password].length != 0
			session[:message] = nil
			current_user.update(password: params[:password])
			redirect "/profile/#{current_user.username}"
	else
		session[:message] = "Password Error: Please try again."
		redirect "/profile/#{current_user.username}/password"
	end
end




























