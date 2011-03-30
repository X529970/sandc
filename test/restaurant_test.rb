describe Waiter do
  it 'should take orders' do
    assert_respond_to Waiter.new, :take_order
  end
  
  it 'should only accept order on menu' do
    puts Waiter.new.take_order("pizza")
    assert Waiter.new.take_order(:pizza)
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
  end
  
  
  it 'should deliver check' do
    assert_respond_to Waiter.new, :deliver_check
  end
  it 'should take money' do
    assert_respond_to Waiter.new, :take_money
  end

  
end