require 'webmock/rspec'
WebMock.disable_net_connect!(allow_localhost: true)

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

	config.before(:each) do
		json_data = File.open('spec/support/repos.json').read

		stub_request(:get, /api.github.com/).
			with(headers: {'Accept'=>'*/*', 'User-Agent'=>'Ruby'}).
			to_return(status: 200, body: json_data, headers: {})
	end
end
