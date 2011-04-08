
describe Waiter do
  before do
     @w=Waiter.new
   end
   
  it 'should take orders' do
    assert_respond_to @w, :take_order
  end
  
  it 'should only accept order on menu' do
 #   assert_equal  "I will take your order straight to the kitchen", @w.take_order(:pizza) # these tests makes my skin crawl! So hard coded. 
    $menu.keys.each {|item| assert_equal  "I will take your order straight to the kitchen", (@w.take_order item )} # thats better
    [1, :frenchfries, 'asdfasf', nil,'fred'].each{ |item| assert_equal "So sorry we don't have #{item}", ( @w.take_order item)}
  end
  
  it 'should place order' do
    assert_respond_to @w, :place_order 
    @mo=MiniTest::Mock.new # does it make sense to use a mock in a unit test? maybe overcomplicated...
    @mo.expect(:order, [:pizza, :plankton])
    assert_equal "Dear chef can you please prepare this order?", @w.place_order(@mo.order)
    assert_equal "Dear chef can you please prepare this order?", @w.place_order([:pizza, :plankton, :pasta]) # more direct and straight forward
    # still getting tripped up by our bad naming conventions for order. really need to refactor that soon....
    
  end
  
  it 'should serve order' do
    assert_respond_to @w, :serve_order
    
  end
  
  it 'should greet customer' do
    assert_respond_to @w, :greet
    refute_nil @w.greet
    assert_includes($greetings.keys, @w.greet)
  # refute_includes($menu.keys, @w.greet) # this is a bad test because theoretically the greeting could also be on the menu. E.g.,the waiter could greet the customer by saying 'plankton'
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
    assert_respond_to @c, :request_order
    @c.request_order(:pizza)
    assert_equal [:pizza], @c.order.items
    @c.request_order(:pizza)
    assert_equal [:pizza,:pizza], @c.order.items
    @c.request_order(:plankton)
    assert_equal [:pizza,:pizza,:plankton], @c.order.items

  end
  
  it 'should be able to order something not on the menu' do # before seems to run before each block., otherwise this or the previous block would fail
    @c.request_order(:junk)
      assert_equal [:junk], @c.order.items
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

end

