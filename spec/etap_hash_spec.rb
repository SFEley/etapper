require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

# An abstraction to make the common eTapestry API idiom of "array of [complex object]" act more like a hash.
describe Etapper::EtapHash do
  class DummyAPIObject
    attr_accessor :type, :value1, :value2
    
    def initialize(i)
      @type, @value1, @value2 = ["type#{i}", "firstval#{i}", "secondval#{i}"]
    end
  end
  
  class DummyEtapperObject
    extend Forwardable
    attr_reader :base
    def_delegators :@base, :type, :type=, :value1, :value1=, :value2, :value2=
    
    def initialize(object)
      @base = object
    end
    alias_method :key, :type
    alias_method :value, :value1
    alias_method :key=, :type=
    alias_method :value=, :value1=
  end
  
  # Because EtapHash is a virtual base class, we need to actualize it with a dumb example
  class DummyHash < Etapper::EtapHash
    def initialize(array_from_api)
      super(array_from_api, DummyEtapperObject)
    end
  end
  
  before(:each) do
    @array = Array.new
    3.times do |i|
      @array << DummyAPIObject.new(i)
    end
    @dummy = DummyHash.new(@array)
  end
  
  it "acts like a Hash" do
    @dummy.should be_a_kind_of(Hash)
  end
    
  it "knows what it represents" do
    @dummy.base.should == @array
  end
    
  it "returns the hashed value when called" do
    @array.each {|item| @dummy[item.type].should == item.value1}
  end
  
  it "can set the hashed value in the base" do
    @dummy['type2'] = 'foobar'
    @array[2].value1.should == 'foobar'
  end
  
  it "can return the full Etapper object" do
    @dummy.detailed['type2'].to_yaml.should == DummyEtapperObject.new(@array[2]).to_yaml
  end
  
  
end