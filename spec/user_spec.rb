require 'spec_helper'
require_relative '../lib/user'

describe GithubCli::User do
	subject(:user) { GithubCli::User.new(username: 'laurentqro', github_client: GithubCli::GithubClient.new) }

	it { is_expected.to respond_to :username }

	it { is_expected.to respond_to :favourite_language }

	it "should have Ruby for favourite language" do
		expect(subject.favourite_language).to eql "Ruby"
	end

end