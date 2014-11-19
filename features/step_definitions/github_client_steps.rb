require_relative "../../lib/user"

When(/^I request the favourite language for "(.*?)"$/) do |username|
	user = GithubCli::User.new(username: 'laurentqro', github_client: @github_client)
	@app.print_favourite_language_for(username)
end

Then(/^I should see "(.*?)"$/) do |string|
  @io.rewind
  expect(@io.read.gsub(/^(\n)*|(\n)*$/, "")).to eql string
end