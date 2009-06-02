require 'etapper/classes/etap_hash'

module Etapper
  class DefinedValueHash < EtapHash
    def initialize(array_from_api)
       super(array_from_api, DefinedValue, :fieldName, :value)
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