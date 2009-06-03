require 'etapper/classes/etap_hash'

module Etapper
  class DefinedValueHash < EtapHash
    def initialize(array_from_api)
       super(array_from_api, DefinedValue, :fieldName, :value)
    end
    
    def []=(key, val)
      update_base(key, val)
      hash_assign(key, val)
    end
    
    
    def add_or_append(key, val)
      if self.has_key?(key)
        arr = self[key].to_a << val
        self.update_base(key, arr)
        self.hash_assign(key, arr)
      else
        self.update_base(key, val)
        self.hash_assign(key, val)
      end
    end
  
  protected
    def add_to_self(obj)
      key, value = obj.key, obj.value
      if self.has_key?(key)
        arr = self[key].to_a << value
        self.hash_assign(key, arr)
      else
        self.hash_assign(key, value)
      end
    end
    
    def add_to_detailed(obj)
      key = obj.key
      if @detailed.has_key?(key)
        arr = @detailed[key].to_a << obj
        @detailed[key] = arr
      else
        @detailed[key] = obj 
      end
    end
  end
end