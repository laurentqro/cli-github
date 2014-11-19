require File.dirname(__FILE__) + '/../../lib/github_client'
require File.dirname(__FILE__) + '/../../lib/terminal'

Before do
	@io = StringIO.new
	@github_client = GithubCli::GithubClient.new
	@app = GithubCli::Terminal.new(io: @io, github_client: @github_client)
end