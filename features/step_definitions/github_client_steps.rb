When(/^I request the favourite language for "(.*?)"$/) do |username|
	@app.print_favourite_language_for(username)
end

Then(/^I should see "(.*?)"$/) do |string|
  @io.rewind
  expect(@io.read.gsub(/^(\n)*|(\n)*$/, "")).to eql string
end