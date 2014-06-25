require 'nokogiri'
require 'pry'
require 'open-uri'




#binding.pry

class Scrape
	attr_accessor :temperature_today, :weather_conditions_today, :chance_of_rain_today, :temperature_tonight, :weather_conditions_tonight, :chance_of_rain_tonight

	def initialize
		@weather = Nokogiri::HTML(open('http://www.weather.com/weather/today/New+York+NY+10028:4:US'))
		@temperature_today = self.scrape_temp_today
		@weather_conditions_today = self.scrape_conditions_today
		@chance_of_rain_today = self.scrape_chance_rain_today
		@temperature_tonight = self.scrape_temp_tonight
		@weather_conditions_tonight = self.scrape_conditions_tonight
		@chance_of_rain_tonight = self.scrape_chance_rain_tonight
	end

	def scrape_temp_today
	 	@weather.css("div.wx-temperature").children[2].text
	 end

	def scrape_conditions_today
		@weather.css("div.wx-data-part").children[28].text
	end

	def scrape_chance_rain_today
	 	@weather.css("div.wx-data-part").children[41].text
	end

	def scrape_temp_tonight
		@weather.css("div.wx-temperature").children[4].text
	end

	def scrape_conditions_tonight
		@weather.css("div.wx-data-part").children[31].text
	end

	def scrape_chance_rain_tonight
		@weather.css("div.wx-data-part").children[46].text
	end

end
