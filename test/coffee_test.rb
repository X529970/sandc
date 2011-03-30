describe Coffee do
  it 'must brew' do
    assert Coffee.brew?
    assert Coffee.new.brew?

    assert_respond_to Coffee.new, :brew
  end
  
  it 'must count how many cups made each day' do
  #  Coffee.cups >= 0
  false
  end
  
end