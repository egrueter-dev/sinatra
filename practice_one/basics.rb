require 'sinatra'

get '/' do
  "Hello, World"
end


get'/about' do
  "a Little About me."
end

get '/hello/:name' do
 "Hello there #{params[:name]}"
end

#creating forms

get '/form' do
  erb :form
end

post '/form' do
  "You said '#{params[:message]}'"
end

#secret form creation

get '/secret' do
  erb :secret
end

post '/secret' do
  "Message is #{params[:secret].reverse}"
end
