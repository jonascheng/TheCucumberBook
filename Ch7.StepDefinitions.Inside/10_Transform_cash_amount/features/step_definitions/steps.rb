class Account
	def deposit(amount)
		@balance = amount
	end
	def balance
		@balance
	end
end

CAPTURE_CASH_AMOUNT = Transform /^\$(\d+)$/ do |digits|
	digits.to_i
end

Given /^I have deposited (#{CAPTURE_CASH_AMOUNT}) in my account$/ do |amount|
	my_account = Account.new
	my_account.deposit(amount)
	my_account.balance.should eq(amount),
	  "Expected the balance to be #{amount} but it was #{my_account.balance}"
end

When /^I request \$(\d+)$/ do |arg1|
	pending # express the regexp above with the code you wish you had
end

Then /^\$(\d+) should be dispensed$/ do |arg1|
	pending # express the regexp above with the code you wish you had
end
