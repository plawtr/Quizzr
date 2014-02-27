Feature: User sign up

Background:
	Given one user exists
	Given one question exists
	Given I am on the homepage
	When I press "Sign up"

Scenario:
	When I see the sign up form
	Then I fill in the following:

		| user_username 						| test     				|
    | user_password 						| qqq      				|
    | user_password_confirmation| qqq   					|
    | user_email    						| test@test.com  	|
    | user_name	   						 	| testname 				|

  And I press "Sign up" within "#new_user"
	Then I should see "Welcome, test."