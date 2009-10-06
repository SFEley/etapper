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
    

  end
end