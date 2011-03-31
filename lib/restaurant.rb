$menu={pizza: 10.49, pasta: 8.86, porkjowl: 13.00, persimmons: 6.00, arugolasalad: 7.50}

class Waiter
  def initialize
  end
  
  def take_order(item)
     !$menu[item].nil?
   # check item on menu
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
  def initialize
  end
  
  def order
  end
  
  def eat
  end
  
  def pay
  end
  
  def leave
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