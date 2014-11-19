require File.dirname(__FILE__) + '/../../lib/github_client'

Before do
	@github_client = GithubCli::GithubClient.new
end