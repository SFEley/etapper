require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Phone" do
  it "requires a type" do
    lambda {d = Etapper::Phone.new(:type => nil, :number => "404-777-8888")}.should raise_error(Etapper::BadValueError, "You must supply a valid type!")
  end
  
  it "requires a number" do
    lambda {d = Etapper::Phone.new(:type => :business)}.should raise_error(Etapper::BadValueError, "You must supply a phone number!")
  end
  
  it "can return a hash" do
    d = Etapper::Phone.new(:type => :business, :number => "404-777-8888")
    d.to_hash.should == {:business => "404-777-8888"}
  end
  
  it "can return its base" do
    d = Etapper::Phone.new(:type => :business, :number => "404-777-8888")
    d.base.should be_a(Etapper::API::Phone)
  end

  it "can be given an API::Phone type" do
    p = Etapper::API::Phone.new('123-456-7890','Mobile')
    d = Etapper::Phone.new(p)
    d.type.should == "Mobile"
    d.number.should == "123-456-7890"
    d.base.should === p
  end 
end