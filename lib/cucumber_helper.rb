require 'capybara/cucumber'
require 'rspec/expectations'

Capybara.default_driver = :selenium

Capybara.app_host = "http://localhost:8888/wordpress"
Capybara.run_server = true
Capybara.default_wait_time = 5

# Capybara.register_driver :javascript do |app|
#   Capybara::Selenium::Driver.new(app, :browser => :chrome)
# end