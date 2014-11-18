require 'spec_helper'

describe "External request" do
  it "queries laurentqro's repos on GitHub" do
    uri = URI("https://api.github.com/users/laurentqro/repos?access_token=#{ENV["GITHUB_API_KEY"]}")

    response = Net::HTTP.get(uri)

    expect(response).to be_an_instance_of(String)
  end
end