require 'http'

response = HTTP.get("https://data.ny.gov/Economic-Development/Farmers-Markets-in-New-York-State-API/xjya-f8ng")

p response.parse(:json)
