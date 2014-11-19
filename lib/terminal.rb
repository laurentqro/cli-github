module GithubCli
	class Terminal
	  def initialize(io: io, github_client: github_client)
	    @stdout = io
	    @github_client = github_client
	  end

	  def print_favourite_language_for(username)
	  	user = GithubCli::User.new(username: username, github_client: @github_client)
	  	@stdout.puts "#{username}'s favourite programming language is #{user.favourite_language}."
	  end
	end
end