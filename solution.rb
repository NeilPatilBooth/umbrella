require "http"
require "json"
require "dotenv/load"

#Hidden Variables
google_maps_key=ENV.fetch("google_maps")
pirate_weather_key=ENV.fetch("pirate_weather")

#user input
pp "What city are you currently in? Use correct capitalization please."
#assign user city input into a variable
user_city = gets.chomp

#Assemble the url of Google Maps Query
maps_request_url= "https://maps.googleapis.com/maps/api/geocode/json?address="+user_city+"&key="+google_maps_key
#Place a GET Request 
raw_maps_url=HTTP.get(maps_request_url)
require "json"

#Set the raw to JSON 
parsed_raw_maps_url=JSON.parse(raw_maps_url)
pp parsed_raw_maps_url

#Fetch Latitude & Longitude 
#city_location_hash=parsed_raw_maps_url.fetch("")


#pp city_lat
#pp google_maps_key
#pp pirate_weather_key



raw_maps_url
