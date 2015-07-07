require_relative "../../config/environment.rb" #use double quotes in req_rel

class Fweet
	ALL_TWEETS = []
	attr_accessor :content
	attr_reader :user

	def initialize(user,content)
		@user = user
		@content = content
		@retweets = 0 
		ALL_TWEETS.push(self)
	end

	def self.all
		ALL_TWEETS
	end

	def retweet 
		@retweets += 1
	end
end