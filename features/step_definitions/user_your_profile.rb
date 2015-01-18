require_relative '../../lib/cucumber_helper'

When /^I select multiple checkbox "([^"]*)"$/ do |xpath|
  page.find(:xpath, xpath).click
end