Feature: User answers a question

Background:
	Given one user exists
	Given one question exists
	Given I am on the homepage
	Given I am logged in

Scenario: the answer is correct
	Given I am on the homepage
	When I choose "user_answer_answer_true"
	And I press "Submit"
	Then I should see "Correct"
	And my answer should be registered

Scenario: the answer is wrong
	Given I am on the homepage
	When I choose "user_answer_answer_false"
	And I press "Submit"
	Then I should see "Incorrect"
	And my answer should be registered

