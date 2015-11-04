require 'capybara'
require 'capybara/cucumber'
require 'capybara/webkit'

# Automatically save screen shots when a Capybara scenario fails
require 'capybara-screenshot/cucumber'
Capybara::Screenshot.autosave_on_failure = true
Capybara::Screenshot.append_timestamp = true
Capybara.save_and_open_page_path = "./"

Capybara.configure do |config|
  config.default_driver = :webkit
end
World(Capybara)
