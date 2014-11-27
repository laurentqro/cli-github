require_relative '../lib/user'

module GithubCli
	class Terminal
	  def initialize(io: io, github_client: github_client)
	    @stdout = io
	    @github_client = github_client
	  end

	  def print_favourite_language_for(username)
	  	begin
	  		user = GithubCli::User.new(username: username, github_client: @github_client)
	  		@stdout.puts "#{username}'s favourite programming language is #{user.favourite_language}."
	  	rescue
	  		@stdout.puts "You entered an invalid username."
	  	end
	  end
	end
end