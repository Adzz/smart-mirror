require 'sinatra/base'
require 'sass/plugin/rack'
require_relative 'models/weather'

class Server < Sinatra::Base
  set :partial_template_engine, :erb
  set :public_folder, 'public'

  get '/' do
    @temp = Weather.new.temp
    erb :index
  end

  run! if app_file == $0
end
