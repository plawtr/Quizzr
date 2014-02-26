
Given(/^one user exists$/) do
  @user = User.create(username: "testuser", name: "testing", password: "qqq", password_confirmation: 'qqq',email: 'a@b')
end
