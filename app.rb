require 'sinatra'
require "sinatra/reloader" if development?
# http://localhost:9494/

set :port, 9494

get '/' do
  'Hello!'
end

get '/secret' do
  'Welcome to our secret website'
end 

get '/random-cat' do
  @name = ["Amigo", "Mittens", "Almond"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
