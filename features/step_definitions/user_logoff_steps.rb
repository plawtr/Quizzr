
Given(/^one user exists$/) do
  @user = User.create(username: "testuser", name: "testing", password: "qqq", password_confirmation: 'qqq',email: 'a@b')
end

When(/^I press the log off button$/) do
  pending # express the regexp above with the code you wish you had
end