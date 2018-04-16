require "sinatra"
require "sinatra/reloader"

require_relative "./lib/analizer"

get "/" do
  erb :index
end

post "/api/analyze" do
  analizer = KyoIndustry::Analizer.new

  @result = analizer.morpheme(params[:text])

  erb :index
end
