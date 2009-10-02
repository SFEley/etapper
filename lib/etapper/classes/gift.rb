require 'etapper/classes/journal_entry'

module Etapper
  class Gift < JournalEntry
    
    etap_read_only :offsettingRef, :tributeAccountRef, :tributeAccountName, :segmentedTransactionRef,
                   :originalAccountName, :originalAccountRef, :originalTransactionRef
    
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
        j.data.collect {|je| Gift.new(je)}
      else
        nil
      end
    end
  end
end