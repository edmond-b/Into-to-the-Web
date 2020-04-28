require 'sinatra'

get '/' do
  'Hello World!'
end

get '/secret' do
  "Hello Ed!"
end

get '/othersecret' do
  "Hello Hesam!"
end

get '/random-cat' do
  @names = ['Amigo', 'Oscar', 'Viking'].sample
  erb(:index)
end

get '/named-cat' do
  print params
  @names = params[:name]
  erb(:index)
end
