
require 'bundler' #require bundler
Bundler.require #require everything in bundler in gemfile
require './lib/email.rb'
require 'pry'
require './lib/weather.rb'

get '/' do |variable|
	
end
