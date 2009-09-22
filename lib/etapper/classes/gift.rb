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
    
    # Sets the account that this gift belongs to.
    def account=(val)
      @account = val
    end
    
    def self.find(query)
      case query
      when /\d+\.\d+\.\d+/  # "4310.0.2276679"
        g = client.getGift(query)
        Gift.new(g) if g
      when Hash
        a = Account.find(query[:account])
        findByAccount(a)
      end
    end
    
    # Retrieves a collection of gifts using getJournalEntries given an account
    def self.findByAccount(account, options={})
      p = Etapper::API::PagedJournalEntriesRequest.new(true, # clearCache
                                                       100,  # count
                                                       0,    # start
                                                       account.ref,
                                                       nil,   # baseQuery
                                                       options[:endDate],
                                                       options[:startDate], 
                                                       [5])   # types (5 is for gifts))
      j = Etapper.client.getJournalEntries(p)
      if j.count > 0
        j.data
      else
        nil
      end
    end
  end
end