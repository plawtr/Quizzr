Feature: User answers a question

Background:
	Given one question exists
	Given I am on the homepage	
	And I am logged in

Scenario: the answer is correct
	When I choose "Yes"
	And I press "Submit"
	Then I should see "Correct"

Scenario: the answer is wrong
	When I choose "No"
	And I press "Submit"
	Then I should see "Incorrect"

