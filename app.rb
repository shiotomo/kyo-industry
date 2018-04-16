require "sinatra"
require "sinatra/reloader"

require_relative "./lib/analizer"

get "/" do
  erb :index
end

post "/" do
  analizer = KyoIndustry::Analizer.new

  @text = params[:text]
  @result = analizer.morpheme(@text)

  erb :index
end

post "/api/analizer" do
end
