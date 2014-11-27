module GithubApp
  class Application
    def initialize(display: display)
      @display = display
    end

    def get_favourite_language_for(user)
      @display.print_favourite_language_for(user)
    end

  end
end