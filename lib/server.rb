require 'sinatra/base'
require 'sass/plugin/rack'
require_relative 'models/weather'

class Server < Sinatra::Base
  set :partial_template_engine, :erb
  set :public_folder, 'public'

  get '/' do
    weather = Weather.new
    @temp = weather.temp
    @icon_id = weather.icon_id
    erb :index
  end

  run! if app_file == $0
end
