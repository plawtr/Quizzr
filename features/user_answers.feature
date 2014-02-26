Feature: User answers a question

Background:
	Given one question exists
	Given one user exists
	Given I am on the homepage	
	Given I am logged in

Scenario: the answer is correct
	Given I am on the homepage
	When I choose "Yes"
	And I press "Submit"
	Then I should see "Correct"

Scenario: the answer is wrong
	When I choose "No"
	And I press "Submit"
	Then I should see "Incorrect"

