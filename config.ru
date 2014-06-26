require './app'
run Sinatra::Application

Mail.defaults do
  delivery_method :smtp, {
    :address => 'smtp.sendgrid.net',
    :port => 587,
    :domain => localhost:9393,
    :user_name => kaylagolfs@aol.com,
    :password => mailgunpassword,
    :authentication => 'plain',
    :enable_starttls_auto => true
  }
end