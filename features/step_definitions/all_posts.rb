require_relative '../../lib/cucumber_helper'

#
# Given /^I should see "([^"]*)" on screen$/ do |text|
#   expect(page).to have_content text
# end
#
# When /^I select (.*) box is checked$/ do |checkbox|
#   check(checkbox)
# end
#
# Then /^I select "(.*)" from "(.*)" drop-down list/ do |selector, value|
#   select selector, :from => value
#   # page.execute_script("$('[chosen-enabled]').trigger('liszt:updated').trigger('change')")
# end
#
# Given /^I am logged in with email "(.*)" and password "(.*)" $/ do |email, password |
#   step %Q{I am on the '/wp-login.php?' page}
#   step %Q{I fill in "Email" with "#{Email}"}
#   step %Q{I fill in "Password" with "#{Password}"}
#   step %Q{I click on "Log In"}
# end