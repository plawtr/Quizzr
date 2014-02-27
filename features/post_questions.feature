Feature: User can post a question

Background:
	Given one user exists
	Given one question exists
	Given I am on the homepage

Scenario: Log in user can post a question
	When I am logged in
	When I follow "Add Question"
	And I fill in "question_body" with "Is Madrid the capital of Spain?"
	And I choose "question_answer_true"
	And I press "Add Question"
	Then my question should exist

Scenario: Improperly logged in user cannot post a question
	Then I should not see "Add Question"

