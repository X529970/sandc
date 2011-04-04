
describe Waiter do
  before do
     @w=Waiter.new
   end
  it 'should take orders' do
    assert_respond_to @w, :take_order
  end
  
  it 'should only accept order on menu' do
    assert @w.take_order(:pizza)
    refute @w.take_order(1)
    assert !@w.take_order(:flanksteak)
  end
  
  it 'should place order' do
    assert_respond_to @w, :place_order
   
  end
  
  it 'should serve order' do
    assert_respond_to @w, :serve_order
  end
  
  it 'should greet customer' do
    assert_respond_to @w, :greet
    refute_nil @w.greet
  end
  
  
  it 'should deliver check' do
    assert_respond_to @w, :deliver_check
  end
  it 'should take money' do
    assert_respond_to @w, :take_money
  end

  
end


describe Customer do
  before do 
    @c=Customer.new
  end
    
it ' should order something to eat' do
  assert_respond_to @c, :order
end


it' should eat the food' do
 assert_respond_to @c, :eat
 end
 
  
it 'should pay the bill'do
assert_respond_to @c, :pay
end

  
it "should leave after eating" do 
  assert_respond_to @c, :leave
  end
  
it 'should tip based on its mood' do
  # this should be mocked?
  # or it could be a feature?
  
end
end

describe Chef do
  before do
    @chef=Chef.new
  end
    it 'should cook the item ordered' do
      assert_respond_to @chef, :cook
    end
  
it 'should prepare ingrediants'do
 assert_respond_to @chef, :prepare
 end
  
  it 'should manage multiple orders' do
  assert_respond_to @chef, :manage
  # not sure about this one...
end
it 'should ready an order' do
  assert_respond_to @chef, :ready_order
  end
  
end