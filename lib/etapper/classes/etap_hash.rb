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
        self.hash_assign(friendly.key, friendly.value)
        @detailed[friendly.key] = friendly  # So we can easily find our objects later
      end
    end
    
    def []=(key, val)
      super
      # Now update the base object
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
    
    def add_or_append(key, val)
      if self.has_key?(key)
        arr = self[key].to_a << val
        self.hash_assign(key, arr)
      else
        self.hash_assign(key, val)
      end
    end
        
  
  end
end