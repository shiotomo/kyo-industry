require "sinatra"
require "sinatra/reloader"

require_relative "./lib/analizer"

get "/" do
  erb :index
end

post "/" do
  analizer = KyoIndustry::Analizer.new

  @text = params[:text]
  @surface= analizer.morpheme(@text, "surface")
  @feature = analizer.morpheme(@text, "feature")

  erb :index
end

post "/api/analizer" do
end
