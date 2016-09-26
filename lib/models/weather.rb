require 'httparty'

class Weather
  def initialize
    @city_id = "2643743"
    @api_key="347020e833b5fdb5ed8ffb75b3c1f8c6"
    @base_path_current = "http://api.openweathermap.org/data/2.5/weather"
    @base_path_forecast = "http://api.openweathermap.org/data/2.5/forecast"
    @units = "metric"
  end

  def temp
    current_weather["main"]["temp"]
  end

  def icon_id
    current_weather["weather"][0]["id"]
  end

 private

  def current_weather
    @current_weather ||= HTTParty.get("#{base_path_current}?id=#{city_id}&units=#{units}&appid=#{api_key}")
  end

  def forecast
    @forecast ||= HTTParty.get("#{base_path_forecast}?id=#{city_id}&units=#{units}&appid=#{api_key}")\
  end

  attr_reader :api_key, :city_id, :base_path_forecast, :units, :base_path_current
end