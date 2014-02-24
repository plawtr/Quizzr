

Feature: Show the first question to the user

Background:
Given one question exists

Scenario:
	Given I am on the homepage
	Then I should see "Is pi greater than three?"

Scenario: the answer is correct
	Given I am on the homepage
	When I choose "Yes"
	Then I should see "Correct"

Scenario: the answer is wrong
	Given I am on the homepage
	When I choose "No"
	Then I should see "Incorrect"



