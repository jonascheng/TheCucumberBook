Given /^班級人數(\d+)人$/ do |headcount|
  @headcount = headcount
end

When /^扛爺訂(\d+)份總機$/ do |ordered_count|
  @ordered_count = ordered_count
end

Then /^扛爺收到(\d+)個便當$/ do |received_count|
  received_count == @ordered_count
  puts('總機便當Get!')
end

When /^扛爺訂(\d+)份, C小姐幫扛爺買(\d+)份$/ do |oper_count, c_count|
	@ordered_count = oper_count + c_count
end

Then /^扛爺收到(\d+)個便當$/ do |received_count|
  received_count == @ordered_count
  puts('愛心便當+總機便當Get!')
end
