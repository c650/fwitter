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

tweet1 = Fweet.new("me","lol #swag")
tweet2 = Fweet.new("chuck", "#mynameischuck")
tweet3 = Fweet.new("marty","#imnotMcFly")
tweet4 = Fweet.new("King Tut","Where am I?")
tweet5 = Fweet.new("NSA","Charles is a boss!")