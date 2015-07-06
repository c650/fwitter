require_relative "../../config/environment.rb" #use double quotes in req_rel
require_relative "../models/fweet.rb"

class ApplicationController < Sinatra::Base
	
	configure do
		set :public_folder, 'public'
		set :views, 'app/views'
	end

	get "/" do	
		@tweets = Fweet.all
		erb :index
	end

end