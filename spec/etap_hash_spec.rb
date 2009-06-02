require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require File.expand_path(File.dirname(__FILE__) + '/shared_etap_hash_spec')


# An abstraction to make the common eTapestry API idiom of "array of [complex object]" act more like a hash.
describe Etapper::EtapHash do
  class DummyAPIObject
    attr_accessor :type, :value1, :value2
    
    def initialize(i=0)
      @type, @value1, @value2 = ["type#{i}", "firstval#{i}", "secondval#{i}"]
    end
  end
  
  class DummyEtapperObject
    extend Forwardable
    attr_reader :base
    def_delegators :@base, :type, :type=, :value1, :value1=, :value2, :value2=
    
    def initialize(params)
      if params.kind_of?(DummyAPIObject)
        @base = params
      else
        @base = DummyAPIObject.new
        @base.type = params[:type].symbolize
        @base.value1 = params[:value1]
        @base.value2 = params[:value2]
      end
    end
    alias_method :key, :type
    alias_method :value, :value1
    alias_method :key=, :type=
    alias_method :value=, :value1=
  end
  
  # Because EtapHash is a virtual base class, we need to actualize it with a dumb example
  class DummyHash < Etapper::EtapHash
    def initialize(array_from_api)
      super(array_from_api, DummyEtapperObject, :type, :value1)
    end
  end
  
  before(:each) do
    @basearray = Array.new
    3.times do |i|
      @basearray << DummyAPIObject.new(i)
    end
    @etaphash = DummyHash.new(@basearray)
    @keymethod = :type
    @valmethod = :value1
    @secondarymethod = :value2
  end
  
  it_should_behave_like "an implementation of EtapHash"
   
end