module GithubCli
	class Terminal
	  def initialize(io: io, github_client: github_client)
	    @stdout = io
	    @github_client = github_client
	  end

	  def print_favourite_language_for(user)
	  	@stdout.puts "#{user.username}'s favourite programming language is #{user.favourite_language}."
	  end
	end
end