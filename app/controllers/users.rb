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
	#validate presence of name
	if params[:name].length == 0
		session[:message] = "Please enter your a name to create an account!"
		redirect '/profile/:username/update'
	end
	#validates username is not taken by ANOTHER user
	if (User.find_by_username(params[:updated_username]) != nil) && current_user.username != params[:updated_username]
		session[:message] = "That username has been taken!"
		redirect '/profile/:username/update'
	end
	#validates email has not already been used by ANOTHER user
	if User.find_by_email(params[:email]) != nil && User.find_by_email(params[:email]).id != session[:id]
		session[:message] = "Account has already been created with this email!"
		redirect '/profile/:username/update'
	end

	session[:message] = nil
	current_user.update(name: params[:name], username: params[:updated_username], email: params[:email])
	redirect "/profile/#{current_user.username}"

end

post '/profile/:username/password' do
	if params[:old_password] != current_user.password
		session[:message] = "Incorrect password: Please try again."
		redirect "/profile/#{current_user.username}/password"
	elsif params[:new_password] != params[:confirm_password]
		session[:message] = "Password confirmation did not match new password."
		redirect "/profile/#{current_user.username}/password"
	elsif (6..15).include?(params[:new_password].length) == false
		session[:message] = "Your new password must be between 6 and 15 characters."
		redirect "/profile/#{current_user.username}/password"
	else
			session[:message] = nil
			current_user.update(password: params[:new_password])
			redirect "/profile/#{current_user.username}"
	end
end




























