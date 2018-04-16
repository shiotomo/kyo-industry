require "sinatra"
require "sinatra/reloader"

get "/" do
  erb :index
end

post "/api/analyze" do
  redirect "/"
end
