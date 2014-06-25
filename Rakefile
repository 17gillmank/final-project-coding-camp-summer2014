require 'nokogiri'
require 'mailgun'
require 'open-uri'
require './email/email.rb'
require './weather.rb'


task :email do
	scraper = Scrape.new

	email = Email.new
	email.send_email("kaylagolfs@aol.com")


end