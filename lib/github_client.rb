require "httparty"

module GithubCli
	class GithubClient
		include HTTParty
		base_uri "https://api.github.com"

		def get_repos_for(user)
			make_request("/users/#{user.username}/repos?access_token=#{github_api_key}")
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

	  def github_api_key
			ENV['GITHUB_API_KEY'] || abort("No access token specified.")
		end

	end
end