module KnowsTheDomain
	def my_account
		@my_account ||= Account.new
	end
	def cash_slot
		@cash_slot ||= CashSlot.new
	end
end
World(KnowsTheDomain)

class Account
	def deposit(amount)
		@balance = amount
	end
	def balance
		@balance
	end
end

class Teller
	def withdraw_from(account, amount)
	end
end

class CashSlot
	def contents
		raise("I'm empty!")
	end
end

CAPTURE_CASH_AMOUNT = Transform /^\$(\d+)$/ do |digits|
	digits.to_i
end

Given /^I have deposited (#{CAPTURE_CASH_AMOUNT}) in my account$/ do |amount|
	my_account.deposit(amount)
	my_account.balance.should eq(amount),
	  "Expected the balance to be #{amount} but it was #{my_account.balance}"
end

When /^I withdraw (#{CAPTURE_CASH_AMOUNT})$/ do |amount|
	teller = Teller.new
	teller.withdraw_from(my_account, amount)
end

Then /^(#{CAPTURE_CASH_AMOUNT}) should be dispensed$/ do |amount|
	cash_slot.contents.should == amount
end
