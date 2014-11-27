require 'spec_helper'
require 'github_app/user'
require 'github_app/github_client'

describe GithubApp::GithubClient do
	subject(:client) { GithubApp::GithubClient.new }

	context "when laurentqro's repos are requested" do
    let(:user) { GithubApp::User.new(username: "laurentqro") }
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

  context "when an invalid username is entered" do
  	let(:user) { GithubApp::User.new(username: "invalid_username") }
    let(:repos) { client.get_repos_for(user) }

    it "returns an empty array" do
    	expect(repos).to eql []
    end
  end
end