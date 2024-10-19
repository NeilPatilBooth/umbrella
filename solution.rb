require "http"
require "json"
require "dotenv/load"

#Hidden Variables
google_maps_key=ENV.fetch("google_maps")
pirate_weather_key=ENV.fetch("pirate_weather")

#user input
pp "What city are you currently in? Use correct capitalization please."
#assign user input into a variable
user_city = gets.chomp

#Assemble the url of Google Maps Query
maps_request= "https://maps.googleapis.com/maps/api/geocode/json?address="+user_city+"&key="+google_maps_key
#pp google_maps_key
#pp pirate_weather_key
pp user_city
pp maps_request
