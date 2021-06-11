require "http"

weather = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=chicago&units=imperial&appid=#{ENV["OPEN_WEATHER_API_KEY"]}")

weather = weather.parse(:json)

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