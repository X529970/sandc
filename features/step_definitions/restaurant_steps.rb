require '~/documents/ruby/sandc/lib/restaurant.rb' # there must be a more appropriate way to require this...

Before do
  @w=Waiter.new
  @chef=Chef.new
  @c=Customer.new
end

Given /^there is a customer$/ do
   !@c.nil?# express the regexp above with the code you wish you had
end

When /^I go to his table$/ do
  # express the regexp above with the code you wish you had
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

Given /^customer orders pizza$/ do
  @c.request_order(:pizza) # express the regexp above with the code you wish you had
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

Then /^chef cooks pizza$/ do
   # express the regexp above with the code you wish you had
end

Then /^chef readies order$/ do
  # express the regexp above with the code you wish you had
end

Then /^waiter delivers order$/ do
  # express the regexp above with the code you wish you had
end

Then /^customer eats pizza$/ do
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

Given /^customer orders flanksteak$/ do
  @c.request_order(:flanksteak) # express the regexp above with the code you wish you had
end

#When /^waiter checks the menu$/ do
 # pending # express the regexp above with the code you wish you had
#end

When /^its not there$/ do
   # express the regexp above with the code you wish you had
end

Then /^waiter tells customer it is not on the menu$/ do
   # express the regexp above with the code you wish you had
end

Then /^customer orders something else$/ do
  @c.request_order(:pizza) # maybe we should remove the bad thing from the order...express the regexp above with the code you wish you had
end

Then /^customer had heart set on flanksteak$/ do
 # express the regexp above with the code you wish you had
end
