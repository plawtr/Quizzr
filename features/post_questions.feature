Feature: User can post a question

Background:
	Given one question exists


Scenario: Log in user can post a question
	Given I am on the homepage
	And I am logged in
	When I follow "Add Question"
	And I fill in "question_body" with "Is Madrid the capital of Spain?"
	And I choose "question_answer_true"
	And I press "Add Question"
	And my question should exist