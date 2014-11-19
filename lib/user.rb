module GithubCli
	class User
		attr_reader :username, :github_client

		def initialize(username: username, github_client: github_client)
			@username = username
			@github_client = github_client
		end

		def favourite_language
			languages = repos.inject({}) do |hash, repo|
				hash[repo["language"]] ||= 0
				hash[repo["language"]] += 1
				hash
			end
			sorted = languages.sort_by { |language, count| count }
			sorted.reverse.first[0]
		end

		private
		def repos
			github_client.get_repos_for(self)
		end
	end
end