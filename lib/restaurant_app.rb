require './restaurant.rb'

def show_menu
  s=""
  $menu.each_pair do |item,price|
    s+=('%-18s' % item.to_s) + ( '$%5.2f' % price ) +"\n" 
  end
  s
end
@bob=Waiter.new
@c1,@c2,@c3,@c4=Customer.new,Customer.new,Customer.new,Customer.new
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

#{'        '+@bob.greet}
#{'        '+@bob.greet}
#{'        '+@bob.greet}
#{'        '+@bob.greet}
#{'        '+@bob.greet}
#{'        '+@bob.greet}
#{'        '+@bob.greet}
#{'        '+@bob.greet}
#{'        '+@bob.greet}
#{'        '+@bob.greet}
#{'        '+@bob.greet}

But Bob is not the only moody one. Each customer when they enter the restaurant comes in
bearing the goodness or badness of their day. Today we have 5 customers and here are their
moods:
EOS

(1..4).each do |v| 
  print '          '+(eval '@c'+v.to_s+'.mood') +"\n"
end

print <<EOT

Hopefully their experience in our restaurant will positively alter their mood, cause them to
leave a good tip and to come back later with all of their friends. Unfortunatly with Bob's
volatility, we cant be so confident of that result. Lets take a look at our first customer's
experience:

  He comes in feeling #{@c1.mood}
  Bob greets him with: #{@g=@bob.greet}
EOT

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
