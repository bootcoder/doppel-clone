#users controller
#routes for user profiles





get "/profile/:username" do
	current_user
	erb :user_profile
end

get '/profile/:username/update' do
	erb :user_update
end

get '/profile/:username/password' do
	erb :user_update
end


post '/profile/:username/update' do

end

post '/profile/:username/password' do

end