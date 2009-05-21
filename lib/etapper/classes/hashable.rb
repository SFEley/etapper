module Etapper
  
  # Abstract utility methods for maintaining useful hashes from collections of complex types
  module Hashable
    def to_hash
      {key => value}
    end
    
    def append_to_hash(hash)
      hash ||= Hash.new
      if hash.has_key?(key)
        arr = hash[key].to_a
        hash[key] = arr.push(value)
        hash
      else
        hash.merge(self.to_hash)
      end
    end
  end
end