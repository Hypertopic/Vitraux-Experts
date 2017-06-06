require 'capybara/cucumber'

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host = 'http://localhost:8888/UTT/if05'
end
