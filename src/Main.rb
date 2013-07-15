require 'octokit'

class Application

	def self.getUserInfo user

		client = Octokit::Client.new(:login => "7imbrook", :oauth_token => "<oauth_token>")

		return client.user user
	end

end
