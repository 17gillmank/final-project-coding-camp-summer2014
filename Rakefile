require 'nokogiri'
require 'mailgun'
require 'open-uri'
require './lib/email.rb'
require './lib/weather.rb'


task :email do
	scraper = Scrape.new

	email = Email.new
	email.send_email("kaylagolfs@aol.com")

	email1 = Email.new
	email1.send_email("nancygillman@gmail.com")


end