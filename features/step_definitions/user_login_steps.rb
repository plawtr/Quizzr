
When(/^I am improperly logged in$/) do
 fill_in "username", :with => "non-existinguser"
 fill_in "password", :with => "qqq"
 click_button "Log in"

end