require 'github_app/cli/display'
require 'github_app/application'
require "github_app/github_client"

Before do
	@github_client = GithubApp::GithubClient.new
  @input = StringIO.new
  @output = StringIO.new
  @app = GithubApp::Application.new(display: GithubApp::Cli::Display.new(input: @input, output: @output))
end