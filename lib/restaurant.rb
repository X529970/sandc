

$menu={pizza: 10.49, pasta: 8.86, porkjowl: 13.00, persimmons: 6.00, potatosalad: 7.50, plankton: 5.00, parsley: 0.50}
$moods={'grumpy'=>0,'indifferent'=>0.10,'happy'=>0.15,'very happy'=>0.20}
$greetings={'Hello, My name is Bob. How can I serve you today?'=> 1,
            'Wadda you want?'=>-1,
            'Chill. I will be back soon to take your order.'=>-1,
            'Sup? What can I get for your supper?'=>0}

class Waiter
  def initialize
  end
  
# check item on menu
  def take_order(item)
     !$menu[item].nil?
  end
  
  def place_order(order)
  end
  
  def serve_order(order)
  end
  
  def greet
    $greetings.keys[rand($greetings.length)]
  end
  
  def deliver_check (customer)
    customer.order.cost
  end
  
  def take_money
  end
end


class Customer
  attr_accessor :mood # don't really want mood up here - need it for testing
  attr_reader :order, :mood, :tip
  
  def initialize
    @tip=0
    @mood=$moods.keys[rand($moods.length)]  
  end
  
  def react (greeting)
    # can't be too happy or unhappy
    @mood=$moods.keys[[[$moods.keys.find_index(@mood)+$greetings[greeting],0].max,$moods.length-1].min]
  end
  
  def request_order(item)
    @order=Order.new if @order.nil?
    @order.order(item)
  end
  
  def eat
  end
  
  def pay
  @tip= $moods[@mood]
  (1+@tip)*@order.cost 
  end
  
  def leave
  (@tip<0.15) ? "I'm never coming here again" : "Let's have a party here next weekend with all our friends"
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
# something funky going on with the names in here. too many 'orders'
# probably not a good practice- can cause confusion...
# refactor later.
  def initialize
    @order =[]
  end
  
  def items
    @order
  end

  def order(item)
    @order+=[item]
  end
  def cost
    # i imagine there is a better way to do this...
    c=0
   @order.each {|v|  c+=$menu.fetch(v,0)} if !@order.nil?
   c
  end
end

