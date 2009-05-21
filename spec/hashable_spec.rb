require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

class TestHashable
  include Etapper::Hashable
  
  attr_accessor :key, :value
  
  def initialize(key, value)
    @key, @value = key, value
  end
end

describe "Hashable module" do
  before(:each) do
    @test = TestHashable.new(:foo, "bar")
  end
  
  it "can return a hash" do
    @test.to_hash.should == {:foo => "bar"}
  end
  
  it "appends a new value to a nonexistent hash" do
    h = @test.append_to_hash(h)
    h.should == {:foo => "bar"}
  end
  
  it "appends a new value to an existing hash" do
    h = {:yoo => "yar"}
    h = @test.append_to_hash(h)
    h.should == {:foo => "bar", :yoo => "yar"}
  end
  
  it "turns duplicate keys into an array of values and appends" do
    h = {:foo => "far"}
    h = @test.append_to_hash(h)
    h.should == {:foo => ["far", "bar"]}
  end
  
end