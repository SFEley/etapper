require 'etapper/classes/account'

module Etapper
  class Gift < EtapAbstract
    
    etap_read_only :ref, :type, :accountName, :accountRef, :offsettingRef,
                   :tributeAccountRef, :tributeAccountName, :segmentedTransactionRef,
                   :originalAccountName, :originalAccountRef, :originalTransactionRef
    
    def definedValues
      @base.definedValues ||= Etapper::API::ArrayOfDefinedValue.new
      @definedValues ||= Etapper::DefinedValueHash.new(base.definedValues)
    end
    
    # Manually setting 'type' because it's a standard method in Ruby 1.8
    def type
      @base.type
    end
    
    # Associates the account that this gift belongs to.
    def account
      @account ||= Account.find(accountRef)
    end
    
    def self.find(query)
      case query
      when /\d+\.\d+\.\d+/  # "4310.0.2276679"
        g = client.getGift(query)
      end
      Gift.new(g) if g
    end
  end
end