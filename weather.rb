require "forecast_io"

# configure the Dark Sky API with your API key
ForecastIO.api_key = "ad6d87ce0b95666e8acfc495665df190"

# do the heavy lifting, use Global Hub lat/long
forecast = ForecastIO.forecast(42.0574063,-87.6722787).to_hash
current_summary = forecast["currently"]["summary"]
current_temp = forecast["currently"]["temperature"] 

puts "In Chicago, it is currently #{current_temp} degrees and #{current_summary}"
puts "------------"
puts "Extended forecast:"

# puts forecast["daily"]["data"][0].keys

# # puts forecast[...] First Day's forecast
# puts "A high temperature of #{forecast["daily"]["data"][0]["temperatureHigh"]} and #{forecast["daily"]["data"][0]["summary"]}"

# #Second Day's forecast
# puts "A high temperature of #{forecast["daily"]["data"][1]["temperatureHigh"]} and #{forecast["daily"]["data"][1]["summary"]}"

# #Third Day's forecast
# puts "A high temperature of #{forecast["daily"]["data"][2]["temperatureHigh"]} and #{forecast["daily"]["data"][2]["summary"]}"

forecast_array = forecast["daily"]["data"]
days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]

forecast_array.each_index do |i|
    puts "A high temperature of #{forecast_array[i]["temperatureHigh"]} and #{forecast_array["summary"]} for #{days[i]}"
end


# pp = pretty print
# use instead of `puts` to make reading a hash a lot easier
# e.g. `pp forecast`



# Example output:
#
# In Chicago, it is currently 33.89 degress and Clear
# Extended forecast:
# A high temperature of 36.47 and Possible flurries in the afternoon.
# A high temperature of 33.98 and Mostly cloudy throughout the day.
# A high temperature of 33.94 and Possible light snow until evening.
# A high temperature of 32.73 and Mostly cloudy throughout the day.
# A high temperature of 32.51 and Partlsy cloudy throughout the day.
# A high temperature of 40.42 and Clear throughout the day.
# A high temperature of 23.21 and Overcast throughout the day.
# A high temperature of 29.12 and Clear throughout the day.