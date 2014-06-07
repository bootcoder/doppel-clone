=begin

**ROUTES**
get '/' do
  erb: index
end

post '/sessions/create' do
  redirect to 'user/:username'
end



get '/user/:username'
  cotains twit_post form
end

post 'twits/new'
  redirect 'user/:username'
end


SET FOLLOW
FollowConnection.create( follower_user_id: 1, followed_user_id: 2)


FIND FOLLOWing
User.find(2).follower_users


FIND FOLLOWers
User.find(1).follower_users






User.find(4).follower_users

User.find(4).followed_users

=end