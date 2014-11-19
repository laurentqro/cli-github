require 'json'
require 'webmock/rspec'
require_relative 'support/fake_github.rb'
WebMock.disable_net_connect!(allow_localhost: true)

RSpec.configure do |config|

	config.before(:each) do
		stub_request(:any, /api.github.com/).to_rack(FakeGitHub)
	end

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end
