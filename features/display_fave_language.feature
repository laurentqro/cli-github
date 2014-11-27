Feature: Display the favourite language for a username

	Scenario: Display favourite language
		When I request the favourite language for "laurentqro"
		Then I should see "laurentqro's favourite programming language is Ruby."

	Scenario: Wrong username
		When I request the favourite language for "an invalid username"
		Then I should see "You entered an invalid username."
