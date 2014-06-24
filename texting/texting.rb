require 'twilio-ruby'

class Text

	def texting(recipient)

		account_sid = 'ACe330ba04d082392df4cb3511dcb72cec'
		auth_token = '2008ea097713e401a16c54029058da82'


		@client = Twilio::REST::Client.new(account_sid, auth_token)
		@recipient = recipient
		
		@client.account.messages.create(
  			:from => '+18152642023',
  			:to => @recipient,
  			:body => 'Texting using Ruby and Twilio is awesome!'
		)
	end

		def recipient
		@recipient = recipient
		end

	
end

my_text = Text.new
my_text.texting(+16465389881)