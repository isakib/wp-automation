require 'capybara/cucumber'
require 'rspec/expectations'

Capybara.default_driver = :selenium
Capybara.app_host = "http://localhost:8888/wordpress"
Capybara.run_server = true
Capybara.default_wait_time = 5
