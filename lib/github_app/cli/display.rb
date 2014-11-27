module GithubApp
  module Cli
    class Display
      def initialize(input: $stdin, output: $stdout)
        @input = input
        @output = output
      end

      def print_favourite_language_for(user)
        begin
          @output.puts "#{user.username}'s favourite programming language is #{user.favourite_language}."
        rescue NoMethodError
          @output.puts "You entered an invalid username."
        end
      end

    end
  end
end