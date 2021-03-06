class HomeController < ApplicationController
  def index
  end

  def test
  	response = HTTParty.get("http://api.wunderground.com/api/#{ENV['wunderground_api_key']}/geolookup/conditions/q/NC/Charlotte.json")
  
  @location = response['location']['city']
  @temp_f = response['current_observataion']['temp_f']
  @temp_c = response['current_observation']['temp_c']
  @weather_icon = response['current_observation']['icon_url']
  @weather_words = response['current_observation']['weather']
  @forecast_link = response['current_observation']['forecast_url']
  @feels_like_f = response['current_observation']['feelslike_f']
  @feels_like_c = response['current_observation']['feelslike_c']
  
  end
end
