require 'etapper/classes/journal_entry'

module Etapper
  class Contact < JournalEntry
        
    # Returns the base method -- must declare explicitly because of the
    # Object#method method. Yrrr.
    def method
      @base.method
    end
    
  end
end