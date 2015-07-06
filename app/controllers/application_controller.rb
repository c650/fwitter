require_relative "../../config/environment" #use double quotes in req_rel

class ApplicationController < Sinatra::Base
	
	get "/" do
	  "Hello World"		
	end

end