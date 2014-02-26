Feature: User login

Background:
	Given one question exists
	Given one user exists
	Given I am on the homepage

Scenario:
	When I am logged in
	And I should see "Welcome, testuser."

Scenario:
	When I am improperly logged in
	Then I should not see "Welcome, testuser."
	And I should see "The email or password is incorrect"