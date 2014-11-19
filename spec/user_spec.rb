require_relative '../lib/user'

describe GithubCli::User do
	subject(:user) { GithubCli::User.new(username: 'laurentqro', github_client: GithubCli::GithubClient.new) }

	it "has a username" do
		expect(subject).to respond_to :username
	end

	it "has a favourite language" do
		expect(subject).to respond_to :favourite_language
	end

	it "has Ruby for favourite language" do
		expect(subject.favourite_language).to eql "Ruby"
	end

end