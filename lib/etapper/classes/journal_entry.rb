require 'etapper/classes/account'

module Etapper
  class JournalEntry < EtapAbstract
    
    TYPES = {
      :note => 1,
      :contact => 2,
      :gift => 5,
      :pledge => 6,
      :payment => 7,
      :recurring_gift_schedule => 8,
      :recurring_gift => 9,
      :segmented_donation => 10,
      :soft_credit => 11,
      :disbursement => 12,
      :segmented_pledge => 13
    }
    attr_reader :type
    etap_read_only :ref, :type, :accountName, :accountRef
    
    # Set the 'type' field based on the real class name, if it wasn't already
    def initialize(base = nil)
      super
      @type = self.class.cname.symbolize
      @base.type ||= TYPES[@type]
    end
    
    def definedValues
      @base.definedValues ||= Etapper::API::ArrayOfDefinedValue.new
      @definedValues ||= Etapper::DefinedValueHash.new(base.definedValues)
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
                                                       type)   # types (5 is for gifts))
      j = Etapper.client.getJournalEntries(p)
      if j.count > 0
        j.data.collect {|je| Gift.new(je)}
      else
        nil
      end
    end
  end
end