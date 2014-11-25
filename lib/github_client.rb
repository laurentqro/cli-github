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
			begin
				response = self.class.get(url, headers: headers)
				if response.code !=200
					abort("Error: #{response.message}")
				end
				response
			rescue => error
				abort("Error: #{error.message}")
			end
		end

		def headers
			{"User-Agent" => "Test"}
		end

	end
end