# /env_test.rb
require "dotenv/load"

pp ENV.fetch("google_maps")
pp ENV.fetch("pirate_weather")
