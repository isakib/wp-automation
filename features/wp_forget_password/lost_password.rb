require_relative '../../lib/cucumber_helper'

Given /^I am retriving with password "(.*)"$/ do |email|
  visit "/wp-login.php"
  fill_in "Username", :with => email + "email"
  click_on "Get New Password"
end


