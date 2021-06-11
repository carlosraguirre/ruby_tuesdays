require "http"

weather = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=chicago&units=imperial&appid=#{ENV["OPEN_WEATHER_API_KEY"]}")

weather = weather.parse(:json)

# display current forecast
p city_name = weather["name"]
p temperature_min = weather["main"]["temp_min"]
p temperature_max = weather["main"]["temp_max"]
p description = weather["weather"][0]["description"]
p wind_speed = weather["wind"]["speed"]