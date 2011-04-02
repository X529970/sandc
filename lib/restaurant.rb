# ~/.rvm/rubies/ruby-1.9.2-p180/bin/ruby

$menu={pizza: 10.49, pasta: 8.86, porkjowl: 13.00, persimmons: 6.00, potatosalad: 7.50, plankton: 5.00, parsley: 0.50}
$badgreet=['Wadda you want?','Chill. I will be back soon to take your order.']

class Waiter
  def initialize
  end
  
# check item on menu
  def take_order(item)
     !$menu[item].nil?
  end
  
  def place_order
  end
  
  def serve_order
  end
  
  def greet
  msg=['Hello, My name is Bob. How can I serve you today?','Wadda you want?','Chill. I will be back soon to take your order.','Sup? What can I get for your supper?']
  msg[rand(msg.length)]
  end
  
  def deliver_check
  end
  
  def take_money
  end
end


class Customer
  attr_accessor :tip
  attr_reader :order
  
  def initialize
    @tip=0
    @order=Order.new
  end
  
  def order=(item)
    @order.order(item)
  end
  
  def eat
  end
  
  def pay
  @tip= [0, 0.1, 0.15,0.20][@happy]
  (1+@tip)*@order.cost 
  end
  
  def leave
 # @tip<0.15*@order.cost ? "I'm never coming here again" : "Let's have a party here next weekend with all our friends"
  end
end


class Chef
  def initialize
  end
  
  def cook(item)
  end
  
  def prepare (ingrediant)
  end
  
  def manage(orders)
  end
  
  def ready_order(order)
  end
end

class Order
  attr_reader :order
  def initialize
    @order =[]
  end

  def order(item)
    @order+=[item]
  end
  def cost
    # i imagine there is a better way to do this...
    c=0
   @order.each {|v|  c+=$menu[v] if !$menu[v].nil?} if !@order.nil?
   c
  end
end

