require 'spec_helper'

describe "External request" do
  it "queries laurentqro's repos on GitHub" do
    uri = URI("https://api.github.com/users/laurentqro/repos")
    response = JSON.load(Net::HTTP.get(uri))

    expect(response[0]["full_name"]).to eql "laurentqro/awesome-ruby"
  end
end