Given /^I have deposited \$(\d+) in my account$/ do |amout|
  Account.new(amout.to_i)
end

When /^I request \$(\d+)$/ do |argl|
  pending #express the regexp above with the code you wish you had
end

Then /^\$(\d+) should be dispensed$/ do |argl|
  pending #express the regexp above with the code you width you had
end
