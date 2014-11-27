require 'spec_helper'
require 'github_app/user'

describe GithubApp::User do
	subject(:user) { GithubApp::User.new(username: 'laurentqro', github_client: GithubApp::GithubClient.new) }

	it { is_expected.to respond_to :username }

	it { is_expected.to respond_to :favourite_language }

	it "should have Ruby for favourite language" do
		expect(subject.favourite_language).to eql "Ruby"
	end

end