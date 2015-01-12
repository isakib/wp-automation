require_relative '../../lib/cucumber_helper'

#
# Given /^I am on the "(.*)" page$/ do |page|
#   visit page
# end
#
# Given /^I fill in "(.*)" with "(.*)"$/ do |selector, value|
#   fill_in selector, :with => value
# end
#
# Given /^I click on "(.*)" link$/ do |selector|
#   click_on selector
# end
#
# Given /^I click on "(.*)" button$/ do |selector|
#   click_button selector
# end
#
# Given /^I select (.*) box is checked$/ do |checkbox|
#   check(checkbox)
# end
#
# Then /^the "([^"]*)" checkbox should be checked$/ do |id|
#   find_field(id)[:value].should eq "forever"
# end
#
# Given /^I should see "([^"]*)" on screen$/ do |text|
#   expect(page).to have_content text
# end
#
# Then /^I should be on "(.*)" page$/ do |page|
#   expect(current_path).to eq page
# end
#
# When /^I wait for (\d+) seconds?$/ do |secs|
#   sleep secs.to_i
# end
#
#
# # Given /^I fill in "(.*)" with "(.*)" email $/ do |selector, value|
# # #   fill_in selector, :with => Time.now.getutc
# # # end
# #
# # When /^I check the favorite color count(?: for email address (.*))?$/ do |email|
# #   email ||= "value"
# #   puts 'Time.now.getutc ' + email
# # end