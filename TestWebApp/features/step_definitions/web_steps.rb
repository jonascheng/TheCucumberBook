Given /^I am on the home page "([^"]*)"$/ do |url|
  Capybara.app_host = url
  visit('')
end

Given /^I have entered "([^"]*)" into the "([^"]*)"$/ do |text, field|
  fill_in field, :with => text
end

Given /^I have clicked "([^"]*)"$/ do |button|
  click_button button
end

Then /^I should see "([^"]*)"$/ do |text|
  page.should have_content(text)
end
