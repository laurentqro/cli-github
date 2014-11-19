require_relative "../../lib/user"

Given(/^the system knows about the repos of "(.*?)"$/) do |username|
	user = GithubCli::User.new(username)
	user.repos = @github_client.get_repos_for(user)
	expect(user.repos).not_to be_nil
end

When(/^I request the favourite language for "(.*?)"$/) do |username|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see "(.*?)"$/) do |string|
  pending # express the regexp above with the code you wish you had
end