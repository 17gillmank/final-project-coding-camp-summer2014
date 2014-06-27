require 'mailgun'


class Email

	Mailgun.configure do |config|
		config.api_key = 'key-57tsip-q95ud6bki67v65a1l7we40oi2'
		config.domain = 'sandbox1bd64ea45b5147c2894437d89ceaba68.mailgun.org'
	end

	def send_email(recipient)

		@mailgun = Mailgun(:api_key => 'key-57tsip-q95ud6bki67v65a1l7we40oi2')
		
		scraper = Scrape.new

		parameters = {
  			:to => "email_address",
  			:subject => "Today's Weather",
  			:text => "Good morning!
	Today there is a #{scraper.scrape_chance_rain_today} chance of rain and #{scraper.scrape_conditions_today}. The high is #{scraper.scrape_temp_today}.
  	Tonight there is a #{scraper.scrape_chance_rain_tonight} chance of rain and #{scraper.scrape_conditions_tonight}. The low is #{scraper.scrape_temp_tonight}. ",
  			:from => "postmaster@sandbox1bd64ea45b5147c2894437d89ceaba68.mailgun.org"
		}
		parameters[:to] = recipient

		@mailgun.messages.send_email(parameters)

	end
end

