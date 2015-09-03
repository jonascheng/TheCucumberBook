Given /^班級人數(\d+)人$/ do |headcount|
  @headcount = headcount.to_i
end

When /^扛爺訂(\d+)份總機$/ do |ordered_count|
  @ordered_count = ordered_count.to_i
end

Then /^扛爺收到(\d+)個便當$/ do |received_count|
  received_count == @ordered_count.to_i
  puts('總機便當Get!')
end

When /^扛爺訂(\d+)份, C小姐幫扛爺買(\d+)份$/ do |oper_count, c_count|
	@ordered_count = oper_count.to_i + c_count.to_i
end

Then /^扛爺收到(\d+)個便當, 揪咪~$/ do |received_count|
  received_count.to_i == @ordered_count
  puts('愛心便當+總機便當Get!')
end

Then /^扛爺收到(\d+)個總機便當$/ do |received_count|
  received_count.to_i == @ordered_count
  puts('"領便當的時候到了"')
end

When /^全員到齊$/ do
  puts('班長說了算')
end

Then /^扛爺發(\d+)個總機便當給大家$/ do |dispatch_count|
  @dispatch_count = dispatch_count.to_i
end

Then /^扛爺自己留(\d+)份$/ do |keep_count|
  @keep_count = keep_count.to_i
end

