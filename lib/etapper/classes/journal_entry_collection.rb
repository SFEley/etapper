require 'date'

module Etapper
  # Retrieves journal entries consecutively from eTapestry, and allows us to enumerate over them.
  class JournalEntryCollection < Enumerator
    attr_reader :request, :account
    
    # Returns a new collection of journal entries. _Requires_ an Etapper::Account object as the first
    # parameter. Also allows options (:type, :count, etc) to be passed to the journal entry request.
    def initialize(account=nil, options={})
      raise RequiredFieldError, "An account is required!" unless @account = account
      
      # Set up our request
      @request = API::PagedJournalEntriesRequest.new
      @request.accountRef = account.ref
      @request.count = options[:count] || 100   # Default to the largest request we can make
      @request.startDate = options[:startDate].to_date if options[:startDate]
      @request.endDate = options[:endDate].to_date if options[:endDate]
      @request.baseQuery = options[:baseQuery]
      @request.start = options[:start]
      if options[:type]
        @request.types = [JournalEntry::TYPES[options[:type]]]
      elsif options[:types]
        @request.types = options[:types].collect {|t| JournalEntry::TYPES[t]}
      end
      
      # Make the request
      @response = Etapper.client.getJournalEntries(@request)
      @total = @response.total  # Do we have all the records?
      @records = @response.data
      
      enum = Proc.new do |yielder|
        counter = 0
        while counter < @total
          if counter == @records.length  # Retrieve more records
            @request.start = counter
            more = Etapper.client.getJournalEntries(@request)
            @records += more.data
          end
          record = @records[counter]
          etapper_class = Etapper.etapper_class(record.class)
          
          yielder.yield etapper_class.new(record)
          counter += 1
        end
      end
      
      super(&enum)
    end
    
    def size
      @total
    end
    
    def complete?
      @records.count == size
    end
    
    # Adds a journal entry of the appropriate type to the account, and to the end of this collection.
    # Note that no exceptional validations happen here, and the added record may not match the collection's
    # query parameters.  Use with moderate caution.
    def <<(addendum)
      addendum.account = @account
      addendum.save
      @records.push addendum  # Add to the end of this collection
      @total += 1  # Increase the size of the collection
      self  # Return the object again so that << can be chained
    end
  end
end