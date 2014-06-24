require 'mailgun'

class Email

	Mailgun.configure do |config|
		config.api_key = 'key-57tsip-q95ud6bki67v65a1l7we40oi2'
		config.domain = 'sandbox1bd64ea45b5147c2894437d89ceaba68.mailgun.org'
	end

	@mailgun = Mailgun(:api_key => 'key-57tsip-q95ud6bki67v65a1l7we40oi2')

	parameters = {
  		:to => "kaylagolfs@aol.com",
  		:subject => "please work!",
  		:text => "THIS IS MY EMAIL",
  		:from => "postmaster@sandbox1bd64ea45b5147c2894437d89ceaba68.mailgun.org"
	}

	@mailgun.messages.send_email(parameters)
end
