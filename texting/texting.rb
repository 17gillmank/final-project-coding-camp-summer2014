require 'twilio-ruby'

class Text

	def texting

		account_sid = 'ACe330ba04d082392df4cb3511dcb72cec'
		auth_token = '2008ea097713e401a16c54029058da82'


		@client = Twilio::REST::Client.new(account_sid, auth_token)
		
		@client.account.messages.create(
  			:from => '+18152642023',
  			:to => '+16465389881',
  			:body => 'Texting using Ruby and Twilio is awesome!'
		)
	end
end

my_text = Text.new
my_text.texting