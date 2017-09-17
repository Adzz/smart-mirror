require 'sinatra/base'
require 'sass/plugin/rack'
require_relative 'models/weather'
require_relative 'models/news'

class Server < Sinatra::Base
  set :partial_template_engine, :erb
  set :public_folder, 'public'

  get '/' do
    weather = Weather.new
    @temp = weather.temp
    @icon_id = weather.icon_id

    outlet = ["ars-technica", "bbc-news", "cnbc", "hacker-news"].sample
    news = News.new(outlet)
    @articles = news.articles[0..3]
    erb :index
  end

  get '/coke_mode' do
    erb :coke_mode
  end

  run! if app_file == $0
end
