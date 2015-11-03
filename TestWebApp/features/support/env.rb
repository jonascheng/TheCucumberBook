require 'capybara'
require 'capybara/cucumber'
require 'capybara-screenshot/cucumber'
require 'capybara/webkit'

Capybara::Screenshot.autosave_on_failure = true
Capybara::Screenshot.append_timestamp = true
Capybara.save_and_open_page_path = "./"
Capybara.configure do |config|
  config.default_driver = :webkit
  config.app_host   = 'http://www.google.com'
end
World(Capybara)
