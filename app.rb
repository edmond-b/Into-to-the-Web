require 'sinatra'
require 'chromedriver-helper'
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

post '/named-cat' do
  print params
  @names = params[:name]
  erb(:index)
end

get '/form' do
  erb(:form)
end
