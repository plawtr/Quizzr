Given(/^I am on the homepage$/) do
  visit '/'
end

Given(/^one question exists$/) do
  @question = Question.create(body: "Is pi greater than three?", answer: 'true', user_id: @user.id )
end

Given(/^I am logged in$/) do
 fill_in "username", :with => "testuser"
 fill_in "password", :with => "qqq"
 click_button "Log in"
end

Then(/^I should see my first question$/) do
  expect(page).to have_content @question.body
end

Then(/^I should not see my first question$/) do
  expect(page).not_to have_content @question.body
end


When(/^my question should exist$/) do
  expect(Question.find_by body: "Is Madrid the capital of Spain?").not_to eq(nil)

end


