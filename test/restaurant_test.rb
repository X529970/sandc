describe Waiter do
  it 'should take orders' do
    assert_respond_to Waiter.new, :take_order
  end
  
  it 'should only accept order on menu' do
    assert Waiter.new.take_order(:pizza)
        refute Waiter.new.take_order(1)
    assert !Waiter.new.take_order(:flanksteak)
  end
  
  it 'should place order' do
    assert_respond_to Waiter.new, :place_order
  end
  
  it 'should serve order' do
    assert_respond_to Waiter.new, :serve_order
  end
  
  it 'should greet customer' do
    assert_respond_to Waiter.new, :greet
    refute_nil Waiter.new.greet
  end
  
  
  it 'should deliver check' do
    assert_respond_to Waiter.new, :deliver_check
  end
  it 'should take money' do
    assert_respond_to Waiter.new, :take_money
  end

  
end


describe Customer do
it ' should order something to eat' do
  assert_respond_to Customer.new, :order
end

it' should eat the food' do
 assert_respond_to Customer.new, :eat
 end
 
  
it 'should pay the bill'do
assert_respond_to Customer.new, :pay
end

  
it "should leave after eating" do 
  assert_respond_to Customer.new, :leave
  end
  
end

describe Chef do
 it 'should cook the item ordered' do
   assert_respond_to Chef.new, :cook
  end
  
it 'should prepare ingrediants'do
 assert_respond_to Chef.new, :prepare
 end
  
  it 'should manage multiple orders' do
  assert_respond_to Chef.new, :manage
  # not sure about this one...
end
it 'should ready an order' do
  assert_respond_to Chef.new, :ready_order
  end
  
end