require '~/documents/ruby/sandc/lib/restaurant.rb'

Given /^there is a customer$/ do
   @c=Customer.new # express the regexp above with the code you wish you had
end

When /^I go to his table$/ do
   @w=Waiter.new # not quite but it will do for now...
end

Then /^I greet him$/ do
  @w.greet # express the regexp above with the code you wish you had 
end

Then /^he responds positively$/ do
#  pending # express the regexp above with the code you wish you had
end

Then /^leaves a big tip after his meal$/ do
 # pending # express the regexp above with the code you wish you had
end

Then /^he responds negatively$/ do
 # pending # express the regexp above with the code you wish you had
end

Then /^leaves no tip$/ do
 # pending # express the regexp above with the code you wish you had
end
