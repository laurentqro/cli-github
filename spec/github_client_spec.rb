require_relative '../lib/application'

describe "The Github client" do
	it "should get the requested user's repos" do
		client = GithubCli::GithubClient.new
		user = GithubCli::User.new("laurentqro")
		user.repos = client.get_repos_for(user)

		expect(user.repos).to be_a Array
		expect(user.repos.length).to eql 16
	end
end