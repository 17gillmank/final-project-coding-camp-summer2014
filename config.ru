require './app'
run Sinatra::Application

# Mail.defaults do
#   delivery_method :smtp, {
#     :address => 'smtp.sendgrid.net',
#     :port => 587,
#     :domain => 'localhost:9393',
#     :user_name => 'postmaster@sandbox1bd64ea45b5147c2894437d89ceaba68.mailgun.org',
#     :password => '9tfluuy564g3',
#     :authentication => 'plain',
#     :enable_starttls_auto => true
#   }
# end
