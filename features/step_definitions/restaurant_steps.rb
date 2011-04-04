#require '~/documents/ruby/sandc/lib/restaurant.rb' # there must be a more appropriate way to require this...

Before do
  @w=Waiter.new
  @chef=Chef.new
  @c=Customer.new
end

Given /^there is a customer$/ do
   assert @c
end

Then /^I greet him$/ do
  # given the random nature of the program, I need to know how to mock to test this
  # correctly
  @c.react(@w.greet)# express the regexp above with the code you wish you had
end

Then /^he is happy$/ do
  @c.mood # express the regexp above with the code you wish you had
end

Then /^leaves a big tip after his meal$/ do
  # express the regexp above with the code you wish you had
end

Then /^he is unhappy$/ do
  @c.mood # express the regexp above with the code you wish you had
end

Then /^leaves a bad tip$/ do
  # express the regexp above with the code you wish you had
end

Given /^customer orders "(.*)"$/ do |arg1|
  @c.request_order(arg1) # express the regexp above with the code you wish you had
end

When /^waiter checks menu$/ do
  @w.take_order(@c.order) # express the regexp above with the code you wish you had
end

When /^its there$/ do
  true == @w.take_order(@c.order)# express the regexp above with the code you wish you had
end

Then /^waiter places order with chef$/ do
 # express the regexp above with the code you wish you had
end


Then /^chef cooks "(.*)"$/ do |arg1|
  # express the regexp above with the code you wish you had
end

Then /^chef cooks pizza$/ do
   # express the regexp above with the code you wish you had
end

Then /^chef readies order$/ do
  # express the regexp above with the code you wish you had
end

Then /^waiter delivers order$/ do
  # express the regexp above with the code you wish you had
end

Then /^customer eats "(.*)"$/ do |arg1|
  # express the regexp above with the code you wish you had
end

Then /^waiter gives check$/ do
  @w.deliver_check(@c) # express the regexp above with the code you wish you had
end

Then /^customer pays$/ do
  @c.pay # express the regexp above with the code you wish you had
end

Then /^customer leaves$/ do
   # express the regexp above with the code you wish you had
end

When /^its not there$/ do
   # express the regexp above with the code you wish you had
end

Then /^waiter tells customer it is not on the menu$/ do
   # express the regexp above with the code you wish you had
end

Then /^customer orders something else$/ do
  @c.request_order(:pizza) # maybe we should remove the bad thing from the order...express the regexp above with the code you wish you had
end
Then /^customer had heart set on "(.*)"$/ do |arg1|
 # express the regexp above with the code you wish you had
end

Given /^there is a customer who is "(.*)"$/ do |arg1|
   # express the regexp above with the code you wish you had
   # I wish I knew how to mock and could create a fake customer with a specific mood
   # but since I don;t know how to do that and don't want to spend hours figuring it out
   # since there are not a lot of great examples out there or useful documentation
   # I added a setter for mood (bad idea) just so I can run this test....
   @c.mood=arg1
end

When /^I greet him with "(.*)"$/ do |arg1|
  @ww=MiniTest::Mock.new
  @ww.expect(:greet, arg1)
end

Then /^he is "(.*)"$/ do |arg1|
  @c.react(@ww.greet)
  assert_equal arg1, @c.mood, "wrong mood" # express the regexp above with the code you wish you had
end

