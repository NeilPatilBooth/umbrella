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
#pp google_maps_key
#pp pirate_weather_key
