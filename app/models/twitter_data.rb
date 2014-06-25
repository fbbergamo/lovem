class TwitterData
	attr_accessor :client, :twittes

	def initialize(query, twittes = 20)
		@client = Twitter::REST::Client.new do |config|
		  config.consumer_key        = Rails.application.secrets.consumer_key
		  config.consumer_secret     = Rails.application.secrets.consumer_secret
		  config.access_token        = Rails.application.secrets.access_token
		  config.access_token_secret = Rails.application.secrets.access_token_secret
		end
		@twittes = @client.search(query).take(twittes)
	end

end
