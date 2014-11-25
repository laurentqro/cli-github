require 'spec_helper'
require_relative '../lib/application'

describe GithubCli::GithubClient do
	subject(:client) { GithubCli::GithubClient.new }

	context "when laurentqro's repos are requested" do
    let(:user) { GithubCli::User.new(username: "laurentqro", github_client: client) }
    let(:repos) { client.get_repos_for(user) }

		it "makes a request to Github" do
      client.get_repos_for(user)
			stub = stub_request(:get, "https://api.github.com/users/laurentqro/repos")
	    expect(stub).to have_been_requested
	  end

	  it "returns an array" do
      expect(repos).to be_a Array
	  end

    it "contains 16 items" do
      expect(repos.length).to eql 16
    end

    it "has a first repo called awesome-ruby" do
      expect(repos.first["name"]).to eql "awesome-ruby"
    end
  end
end