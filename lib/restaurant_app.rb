require './restaurant.rb'

def show_menu
  s=""
  $menu.each_pair do |item,price|
    s+=('%-18s' % item.to_s) + ( '$%5.2f' % price ) +"\n" 
  end
  s
end


def customer_experience (cust,name='customer')
print <<EOS
  #{name}'s experience:
    He comes in feeling #{cust.mood}
    Bob greets him with: #{@g=@bob.greet}
EOS

  cust.react(@g)
  print "    After this his mood is ",cust.mood,'.'
  cust.request_order :pizza
  cust.request_order :plankton
  cust.request_order :potatosalad
  cust.request_order :pizza # let's see if we can get two.
  cust.pay

print <<EOS
    Our customer orders a few things from the menu.
    He is hoping to enjoy  #{cust.order.items.join ', '}.
    After enjoying his fine meal, he gets the check and calculates a tip.
    His meal costs #{'$%.2f' % cust.order.cost} and he decides to leave a tip of #{'%.0f%' % (100*cust.tip)}
    He leaves the restaurant with the following thought- #{cust.leave}

EOS
end
  
@bob=Waiter.new
@c1,@c2,@c3,@c4,@c5=Customer.new,Customer.new,Customer.new,Customer.new,Customer.new
print <<EOS
Welcome to SandC's Fine New Restaurant.
We have an extensive menu, although we only serve foods that start with the letter P.

#{show_menu}

Currently we only have one waiter whose name is Bob. We tried to hire someone named Paul
to fit with our P-themed restaurant, but we were concerned that Bob may bring suit as
he was clearly the better candidate. 

Bob's only weakness is that he is a bit volitile -- in fact perhaps a bit manic depressive.
When he greets a customer he says something different depending on his current mood -- which 
changes on a dime. For example, here is what he said to the last 10 customers:

EOS

(1..10).each do puts '        '+@bob.greet end

print <<EOS

But Bob is not the only moody one. Each customer when they enter the restaurant comes in
bearing the goodness or badness of their day. Today we have 5 customers and here are their
moods:
EOS

(1..5).each do |v| 
  puts '          '+(eval '@c'+v.to_s+'.mood') +"\n"
end

print <<EOS

Hopefully their experience in our restaurant will positively alter their mood, cause them to
leave a good tip and to come back later with all of their friends. Unfortunatly with Bob's
volatility, we cant be so confident of that result. Let's see what happens to our customers.

EOS

(1..5).each do |v| # trying to decide if I like this cheesy way of doing a loop
  eval 'customer_experience(@c'+v.to_s+',"Customer ' +v.to_s+'")'
  
end


=begin

Lets take a look at our first customer's
experience:


  He comes in feeling #{@c1.mood}
  Bob greets him with: #{@g=@bob.greet}
EOS

@c1.react(@g)
print "  After this his mood is ",@c1.mood,'.'
@c1.request_order :pizza
@c1.request_order :plankton
@c1.request_order :potatosalad
@c1.pay

print <<EOS
  Our customer orders a few things from the menu.
  He is hoping to enjoy  #{@c1.order.items.join ', '}.
  After enjoying his fine meal, he gets the check and calculates a tip.
  His meal costs #{'$%.2f' % @c1.order.cost} and he decides to leave a tip of #{'%.0f%' % (100*@c1.tip)}
  He leaves the restaurant with the following thought- #{@c1.leave}

EOS
=end