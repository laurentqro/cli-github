require "httparty"

module GithubCli
	class GithubClient
		include HTTParty
		base_uri "https://api.github.com"

		def get_repos_for(user)
			make_request("/users/#{user.username}/repos")
		end

		private

		def make_request(url)
			@repos = []

			begin
				response = self.class.get(url, headers: headers)
			rescue
				response = []
			end

			begin
				response["message"]
			rescue
				@repos = response
			end
			@repos
		end

		def headers
			{"User-Agent" => "Test"}
		end

	end
end