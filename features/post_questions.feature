Feature: User can post a question

Background:
	Given one question exists
	Given one user exists

Scenario: Log in user can post a question
	Given I am on the homepage
	And I am logged in
	When I follow "Add Question"
	And I fill in "question_body" with "Is Madrid the capital of Spain?"
	And I fill in "question_answer" with "true"
	And I press "Add Question"
	And my question should exist