require "http"

response = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=chicago&units=imperial&appid=#{ENV["OPEN_WEATHER_API_KEY"]}")

pp response.parse(:json)
