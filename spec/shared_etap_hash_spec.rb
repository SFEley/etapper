shared_examples_for "an implementation of EtapHash" do
  it "acts like a Hash" do
    @etaphash.should be_a_kind_of(Hash)
  end
  
  it "knows what it represents" do
    @etaphash.base.should == @basearray
  end
  
  it "returns the hashed value when called" do
    @basearray.each {|item| @etaphash[item.send(@keymethod).symbolize].should == item.send(@valmethod)}
  end

  it "can set the hashed value in the base" do
    @etaphash[:fax] = 'foobar'
    @basearray.last.send(@valmethod).should == 'foobar'
  end

  it "can return the full Etapper object" do
    base = @basearray.last
    key = base.send(@keymethod).symbolize
    sec = base.send(@secondarymethod)
    @etaphash.detailed[key].send(@secondarymethod).should == sec
  end

  it "makes new values in the base when a key is added" do
    @etaphash[:voice] = 'yowza'
    @basearray.last.send(@valmethod).should == 'yowza'
  end
end