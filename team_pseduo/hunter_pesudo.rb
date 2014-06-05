# user wants to have a profile page

# create user profile routes


get '/users/profile/:user' do
	
end

get '/users/profile/:user/update' do

end

get '/users/profile/:user/password' do

end


post '/users/profile/:user/update' do

end

post '/users/profile/:user/password' do

end


# create views for user profile page

# user_profile.erb
# user_update.erb
# user_password.erb


**profile.erb**

should display user information nicely
should have button to edit profile
should have button to change password
*stretch* display all user twits
should have a button to return to home

**update.erb**
should have a form populated with user data
should have a Update Profile button
should have a cancel button that returns to profile.
should update db with new user info

**password.erb**
should have a form to update password
should have old pass, new pass, confirm pass
should have update pass button
should have a cancel button -- return to profile









































