require 'nokogiri'
require 'pry'
require 'open-uri'



weather = Nokogiri::HTML(open('http://www.weather.com/weather/today/New+York+NY+10028:4:US'))

binding.pry

temperature_today = weather.css("div.wx-temperature").children[2].text

temperature_tonight = weather.css("div.wx-temperature").children[4].text