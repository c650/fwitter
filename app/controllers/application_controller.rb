require_relative "../../config/environment.rb" #use double quotes in req_rel
require_relative "../models/fweet.rb"

class ApplicationController < Sinatra::Base
	
	configure do
		set :public_folder, 'public'
		set :views, 'app/views'
	end

	get "/" do	
		Fweet.new("me","lol #swag")
		Fweet.new("chuck", "#mynameischuck")
		Fweet.new("marty","#imnotMcFly")
		Fweet.new("King Tut","Where am I?")
		Fweet.new("NSA","Charles is a boss!")
		
		@tweets = Fweet.all
		erb :index
	end

end