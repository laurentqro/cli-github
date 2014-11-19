require_relative '../lib/user'

describe GithubCli::User do
	subject(:user) { GithubCli::User.new('laurentqro') }

	it "has a username" do
		expect(subject).to respond_to :username
	end

	it "has repos" do
		expect(subject).to respond_to :repos
	end
end