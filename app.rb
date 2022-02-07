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

get '/cat' do
  erb(:index)
end
