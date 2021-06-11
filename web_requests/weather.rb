require "http"

# loop to take in as many inputs
while true 
  
  # weather based on user response
  print "Enter a city to get the weather: "
  city_response = gets.chomp

  if city_response == "q"
    break
  end

  print "Enter your desired temperature units (Celsius or Farenheit): "
  temperature_response = gets.chomp.capitalize

  if temperature_response == "CELSIUS"
    temperature_response = metric
  elsif temperature_response == "FARENHEIT"
    temperature_response = imperial
  end

  # dynamic weather API
  weather = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=#{city_response}&units=#{temperature_response}&appid=#{ENV["OPEN_WEATHER_API_KEY"]}")

  weather = weather.parse(:json)


  p city_name = weather["name"]
  p temperature_min = weather["main"]["temp_min"]
  p temperature_max = weather["main"]["temp_max"]
  p description = weather["weather"][0]["description"]
  p wind_speed = weather["wind"]["speed"]

  # display current forecast
  city_name = weather["name"]
  temperature_min = weather["main"]["temp_min"]
  temperature_max = weather["main"]["temp_max"]
  description = weather["weather"][0]["description"]
  wind_speed = weather["wind"]["speed"]

  pp "The current weather in #{city_name}:
      Minimum temperature today: #{temperature_min}
      Maximum temperature today: #{temperature_max}
      Skies: #{description}
      Wind speed: #{wind_speed}"

end