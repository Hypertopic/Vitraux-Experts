require 'capybara/cucumber'
require 'pry'

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host = 'http://localhost:3000'
end
