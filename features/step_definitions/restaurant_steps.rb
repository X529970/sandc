Before do
# this gets called before each scanario.
  @w=Waiter.new
  @c=Customer.new
end

Given /^customer orders "(.*)"$/ do |item|
  @c.request_order(item) 
end

When /^waiter checks menu$/ do
  @c.order.items.each {|item| refute_nil @w.take_order(item.to_sym)   }
end

When /^its there$/ do
 @c.order.items.each  {|item| assert_equal "I will take your order straight to the kitchen", @w.take_order(item.to_sym)}# express the regexp above with the code you wish you had
 # take order should be refactored to take an array....
end

Then /^waiter places order with chef$/ do
  assert_equal "Dear chef can you please prepare this order?", @w.place_order(@c.order.items)
end

Then /^waiter serves order$/ do
   assert_equal "Here's your grub", @w.serve_order(@c.order.items)
end

Then /^customer eats "(.*)"$/ do |arg1|
    assert_equal "Nom, nom, nom", @c.eat
end

Then /^waiter gives check$/ do
  @w.deliver_check(@c) 
  refute_equal 0.0, @c.order.cost # no order, no check
end

Then /^customer pays$/ do
  refute_equal 0.0, @c.pay # no dine and dash
end

Then /^customer leaves$/ do
   refute_nil @c.leave
end

When /^waiter tells customer "(.*)" is not there$/ do |arg1|
 @c.order.items.each{ |item| assert_equal "So sorry we don't have #{item}", ( @w.take_order item)}
end

Given /^there is a customer who is "(.*)"$/ do |arg1|
   # express the regexp above with the code you wish you had
   # I wish I knew how to mock and could create a fake customer with a specific mood
   # but since I don;t know how to do that and don't want to spend hours figuring it out
   # since there are not a lot of great examples out there or useful documentation
   # I added a setter for mood (bad idea) just so I can run this test....
   @c.instance_variable_set(:@mood, arg1)
end

When /^I greet him with "(.*)"$/ do |arg1|
  @ww=MiniTest::Mock.new
  @ww.expect(:greet, arg1)
end

Then /^he is "(.*)"$/ do |arg1|
  @c.react(@ww.greet)
  assert_equal arg1, @c.mood, "wrong mood" # express the regexp above with the code you wish you had
end

Then /^tip is "(.*)"$/ do |expected_tip|
  puts expected_tip
  @c.pay
  assert_equal expected_tip.to_f, @c.tip #
end

