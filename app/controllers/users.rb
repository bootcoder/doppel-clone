#users controller
#routes for user profiles





get "/users/:username" do
	current_user
	erb :user_page
end

get '/users/:username/update' do
	erb :user_update
end

get '/users/:username/password' do
	erb :user_update
end


post '/users/:username/update' do

end

post '/users/:username/password' do

end