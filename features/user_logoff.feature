Feature: User logoff

Background:
	Given one user exists
	Given one question exists
	Given I am on the homepage
	When I am logged in

Scenario:
	When I press "Log off"
	Then I should be on the homepage
	And I should not see "Welcome"