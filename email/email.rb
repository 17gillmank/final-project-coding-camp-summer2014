require 'mailgun'

class Email

	Mailgun.configure do |config|
		config.api_key = 'key-57tsip-q95ud6bki67v65a1l7we40oi2'
		config.domain = 'sandbox1bd64ea45b5147c2894437d89ceaba68.mailgun.org'
	end

	def send_email(recipient)

		@mailgun = Mailgun(:api_key => 'key-57tsip-q95ud6bki67v65a1l7we40oi2')

		parameters = {
  			:to => "email_address",
  			:subject => "please work!",
  			:text => "THIS IS MY EMAIL",
  			:from => "postmaster@sandbox1bd64ea45b5147c2894437d89ceaba68.mailgun.org"
		}
		parameters[:to] = recipient

		@mailgun.messages.send_email(parameters)
	end
end
email_me = Email.new
email_me.send_email("kaylagolfs@aol.com")
