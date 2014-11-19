Feature: Display the favourite language for a username

	Scenario: Display favourite language
		When I request the favourite language for "laurentqro"
		Then I should see "laurentqro's favourite programming language is Ruby."
