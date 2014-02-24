Given(/^I am on the homepage$/) do
  visit '/'
end

Given(/^one question exists$/) do
  Question.create(body: "Is pi greater than three?", answer: 'true')
end
