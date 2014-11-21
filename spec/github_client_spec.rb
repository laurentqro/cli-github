require 'spec_helper'
require_relative '../lib/application'

describe "The Github client" do
	it "should get the requested user's repos" do
		client = GithubCli::GithubClient.new
		user = GithubCli::User.new(username: "laurentqro", github_client: client)
		repos = client.get_repos_for(user)

		expect(repos).to be_a Array
		expect(repos.length).to eql 16
		expect(repos.first["name"]).to eql "awesome-ruby"
	end
end