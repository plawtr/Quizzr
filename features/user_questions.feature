Feature: Show the first question to the user

Background:
Given one question exists

Scenario: Logged in
	Given I am on the homepage	
	And I am logged in 
	Then I should see my first question

Scenario: Not logged in
	Given I am on the homepage	 
	Then I should not see my first question




