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

# requires to make checkbox generic #
Then /^I select checkbox$/ do
  check(find("input[type='checkbox']")[:id])
end

When /^I select "(.*)" from "(.*)" drop-down menu$/ do |selector, id|
  select(selector, :from => id)
end

When /^I click through xpath link "([^"]*)"$/ do |xpath|
  page.find(:xpath, xpath).click
end

When /^I upload a "(.+)" file with "(.+)" and located at "(.+)"$/ do |file_name, name_selector, path|
  attach_file(name_selector, "#{path}/#{file_name}")
end

When /^I hover and click on $/ do
  # driver.execute_script('$("#element").trigger("hover")')
  find('.row-actions').hover
end