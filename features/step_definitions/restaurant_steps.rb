Given /^there is a customer$/ do
  refute_nil @c=Customer.new # express the regexp above with the code you wish you had
end

When /^I go to his table$/ do
  refute_nil @w=Waiter.new # not quite but it will do for now...
end

Then /^I greet him$/ do
 refute_nil @w.greet # express the regexp above with the code you wish you had 
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
