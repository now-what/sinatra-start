require "sinatra"
require "sinatra/reloader" if development?

get '/' do
  "<h1>Hello World</h1>"
end

get '/secret' do
  "Super secret"
end

get '/makers' do
  "Accademia"
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

get '/named-cat' do
  # p params
  # @name = params[:name]
  erb(:index)
end

post '/named-cat' do
  @name = params[:name]
  erb(:index)
end
