require "github_app/user"

When(/^I request the favourite language for "(.*?)"$/) do |username|
	@app.get_favourite_language_for(GithubApp::User.new(username: username, github_client: @github_client))
end

Then(/^I should see "(.*?)"$/) do |string|
  expect(@output.string.strip).to eql string
end