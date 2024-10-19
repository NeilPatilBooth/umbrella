require "http"
require "json"
require "dotenv/load"

#Hidden Variables
google_maps_key=ENV.fetch("google_maps")
pirate_weather_key=ENV.fetch("pirate_weather")
pp "What city are you currently in?" 
user_city = gets.chomp
pp google_maps_key
pp pirate_weather_key
