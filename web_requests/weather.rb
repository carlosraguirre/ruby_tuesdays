require "http"

weather = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=chicago&units=imperial&appid=#{ENV["OPEN_WEATHER_API_KEY"]}")

weather = weather.parse(:json)

# displya current forecast

p temperature_min = weather["main"]["temp_min"]
