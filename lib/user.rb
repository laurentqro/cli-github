module GithubCli
	class User
		attr_reader :username
		attr_accessor :repos

		def initialize(username)
			@username = username
			@repos = []
		end
	end
end