require 'json'
require 'webmock/rspec'
WebMock.disable_net_connect!(allow_localhost: true)

RSpec.configure do |config|
  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = 'random'

  config.before(:each) do
    repos_json_file = File.open('spec/support/fixtures/repos.json').read

    stub_request(:get, "https://api.github.com/users/laurentqro/repos").
    with(:headers => { 'User-Agent' => 'Test' }).
    to_return(:status => 200, :body => repos_json_file, headers: { 'Content-Type' => 'application/json' })
  end
end
