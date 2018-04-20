require "sinatra/base"
require "unicorn"
require "sinatra/reloader"
require "json"

require_relative "./lib/analizer"

class MainApp < Sinatra::Base
  get "/" do
    erb :index
  end

  post "/" do
    analizer = KyoIndustry::Analizer.new

    @text = params[:text]
    @surface = analizer.morpheme(@text, "surface")
    @feature = analizer.morpheme(@text, "feature")

    erb :index
  end

  # API
  # {"text" : "内容"}のJSONをPOSTされたら、形態素解析した結果を返却する
  post "/api/analizer", provides: :json do
    params = JSON.parse request.body.read

    if params["text"]
      analizer = KyoIndustry::Analizer.new
      @result = analizer.api_morpheme(params["text"])

      @result
    end
  end
end
