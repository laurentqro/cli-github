#### Github CLI

A simple command line application that allows users to enter an arbitrary GitHub username and be presented with a best guess of the GitHub user's favourite programming language.

---

###### Usage

* Clone the repository.
* `cd` into the cloned repository.
* To run the program: `bin/favelang [github_username]`.
* If the program fails to run due to permissions, type `chmod a+x bin/favelang`

###### Tests

* Integration tests with [Cucumber](https://github.com/cucumber/cucumber).
* Unit tests with [RSpec](https://github.com/rspec/rspec).

---

**Data source:** [Github API](https://developer.github.com).