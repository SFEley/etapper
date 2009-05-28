module Etapper
  # This is a virtual base class for specialized representations of eTapestry API arrays 
  # such as PhoneHash, DefinedValueHash, etc.  It _should not_ be invoked on its own.  It
  # needs the following constants defined in subclasses to work:
  class EtapHash < Hash
    attr_reader :base, :detailed
    alias_method :hash_assign, :[]=
    
    def initialize(array_from_api, etapper_class)
      @base = array_from_api
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
      friendly = @detailed[key]
      friendly.value = val
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