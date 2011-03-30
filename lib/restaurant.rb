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
  end
  
  def deliver_check
  end
  
  def take_money
  end
  
  
  
end