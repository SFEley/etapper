module Etapper
  # This is a virtual base class for specialized representations of eTapestry API arrays 
  # such as PhoneHash, DefinedValueHash, etc.  It _should not_ be invoked on its own.  It
  # needs the following constants defined in subclasses to work:
  class EtapHash < Hash
    attr_reader :base, :detailed, :etapper_class
    alias_method :hash_assign, :[]=
    
    def initialize(array_from_api, etapper_class, key_symbol, value_symbol)
      @base, @etapper_class, @key_symbol, @value_symbol = array_from_api, etapper_class, key_symbol, value_symbol
      @detailed = Hash.new
      @base.each do |element|
        friendly = etapper_class.new(element)
        add_to_self(friendly)
        add_to_detailed(friendly)  # So we can easily find our objects later
      end
    end
    
    def []=(key, val)
      update_base(key, val)
      hash_assign(key, val)
    end
    
  private 
  
    def update_base(key, val)
      if @detailed.has_key?(key)
        friendly = @detailed[key]
        friendly.value = val
      else # New object, so create it and push to base
        friendly = @etapper_class.new(@key_symbol => key, @value_symbol => val)
        friendly.value = val
        @detailed[key] = friendly
        @base << friendly.base
      end
    end
  
    def add_to_self(obj)
      self.hash_assign(obj.key, obj.value)
    end
    
    def add_to_detailed(obj)
      @detailed[obj.key] = obj  # So we can easily find our objects later
    end
  end
  
end