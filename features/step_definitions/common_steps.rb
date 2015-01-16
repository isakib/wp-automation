require_relative '../../lib/cucumber_helper'

Given /^I am on the "(.*)" page$/ do |page|
  visit page
end

Given /^I fill in "(.*)" with "(.*)"$/ do |selector, value|
  fill_in selector, :with => value
end

Given /^I click on "(.*)" link$/ do |selector|
  click_on selector
end

Given /^I click on "(.*)" button$/ do |selector|
  click_button selector
end

Given /^I should see "([^"]*)" on screen$/ do |text|
  expect(page).to have_content text
end

When /^I wait for (\d+) seconds?$/ do |secs|
  sleep secs.to_i
end

Then /^I click on checkbox$/ do
  check(find("input[type='checkbox']")[:id])
end

When /^I select "(.*)" from drop-down menu$/ do |role|
  select(role, :from => "user_role")
end

When /^I press xpath link "([^"]*)"$/ do |xpath|
  page.find(:xpath, xpath).click
end


