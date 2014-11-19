module GithubCli
	class Terminal
	  def initialize(io: io, github_client: github_client)
	    @stdout = io
	    @github_client = github_client
	  end

	  def get_favourite_language_for(user)
	  	@stdout.puts "#{user.favourite_language}"
	  end
	end
end