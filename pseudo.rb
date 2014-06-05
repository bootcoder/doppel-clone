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
=end